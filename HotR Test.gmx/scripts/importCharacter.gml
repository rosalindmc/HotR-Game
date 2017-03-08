#define importCharacter
//Import all the stats from Owner and run some vital combat scripts

o = argument0

invSwitch = 1+o.range
iCVis()
iC()
iCAbilities()

wounds = o.wounds
life = lifeMax
stm = stmMax
arm = armMax

expEarned = false
expOnKill = floor(o.level*(1+(o.level*.1)))

if hasShield = true
{
    blocks = blockMax
}

#define iCVis
//Import Character visuals
race = o.raceName
class = o.className
skinTone = o.skinTone
headSprite = o.headSprite
earSprite = o.earSprite
eyeColour = o.eyeColour
hairColour = o.hairColour
hairStyle = o.hairStyle
beardStyle = o.beardStyle
name = string(o.firstName)+' '+string(o.lastName)

legSprite = o.legSprite
legSpriteMod = o.legSpriteMod

hipsOffset = o.hipsOffset
hipsImage = o.hipsImage

bodyOffset = o.bodyOffset
bodyImage = o.bodyImage
bodyAdjust = o.bodyAdjust

headOffset = o.headOffset
headAdjust = o.headAdjust

chstAdjust = o.chstAdjust
chstImage = o.chstImage

height = o.height

shldrOffset[1] = o.shldrOffset[1]
shldrOffset[2] = o.shldrOffset[2]
shldrAdjust = o.shldrAdjust

legAdjust[1] = o.legAdjust[1]
legAdjust[2] = o.legAdjust[2]
legOffset[1] = o.legOffset[1]
legOffset[2] = o.legOffset[2]

handHeight[1] = o.handHeight[1]
handHeight[2] = o.handHeight[2]

gender = o.gender

faceImage = o.faceImage

favColour = o.favColour

eyeTrinket = o.eyeTrinket
backTrinket = o.backTrinket
neckTrinket = o.neckTrinket
hipTrinket = o.hipTrinket
headTrinket = o.headTrinket
headScarfTrinket = o.headScarfTrinket

overBodyItem = o.overBodyItem
underBodyItem = o.underBodyItem
underLegsItem = o.underLegsItem
likesGloves = o.likesGloves

bodyVariant = o.bodyVariant
legsVariant = o.legsVariant
sleeveVariant = o.sleeveVariant
skirtVariant = o.skirtVariant

cutVariant = o.cutVariant
cleaveVariant = o.cleaveVariant

#define iCStats
//Import Character attributes, skills, abilities, etc.

//Attributes
might = o.might
grace = o.grace
cunning = o.cunning
will = o.will
fellowship = o.fellowship

//Leveling
level = o.level
experience = o.experience
expToLevel = o.expToLevel

#define iCWear
//Run "On Character Scripts"
i = 1
repeat(8)
{
script_execute(o.invSlot[i,0],1)
script_execute(o.invSlot[i,2],1)
script_execute(o.invSlot[i,3],1)
script_execute(o.invSlot[i,4],1)

i += 1
}


#define iCSubStats
//Calculate derivative attributes

//Movement
movement = 4+((grace-8)*.2)+o.raceMove      //metres to a move action
movementBonus = 3+((grace-8)*.3)            //running bonus
if grace >= 8
{haste = 1+((grace-8)*.03)}
else
{haste = 1/(1+((grace-8)*-.03))}

//Skill
mSkill = max(((grace-8)*.1)+((cunning-8)*.2)+o.mSkill,0)
rSkill = max(((grace-8)*.1)+((cunning-8)*.2)+o.rSkill,0)
cSkill = max(((grace-8)*.1)+((cunning-8)*.2)+o.cSkill,0)

//Offense
atkDPS = (might-8)/2
atkHaste = ((grace-8)*.03)

//Ability
spellPow = (cunning-8)
if cunning >= 8
{spellDur = 1+((cunning-8)*.1)}
else
{spellDur = 1/(1+((cunning-8)*-.1))}

//Morale
sResist = 1
bravery = 0
stubborn = false
threatResist = 0

//Blocking
blockMax = 1
blockGen = 0
blockStr = might

//Vitals
lifeMax = max(floor(8+(will-8)+((might-8)/2)+o.life),4)
lifeRegen = 2+((will-8)*.3)

stmMax = max(floor(8+(will-8)+((grace-8)/2)+o.stamina),4)
stmRegen = 5+(stmMax*.2)

#define iCEquip
//Equip Items
//Reset variables

greatWeapon = false
dualWield = false
hasShield = false
threat = false
rangeAttack = false
dodge = 25
armMax = 0
prot = 0
enc = 0
reach = 1.5
rigid = false

initializeTraits()
initializeTriggers()
initializeWeapon(1)
initializeWeapon(2)
clearArmour()

//Then run "Equipped Script"
switch(argument0)
{
case 1:
i = 1

invSwitch = 1

script_execute(o.invSlot[1,0],2)
script_execute(o.invSlot[1,2],2)
script_execute(o.invSlot[1,3],2)
script_execute(o.invSlot[1,4],2)

if o.invSlot[2,0] != emptySlot
{
    i = 2
    script_execute(o.invSlot[2,0],2)
    script_execute(o.invSlot[2,2],2)
    script_execute(o.invSlot[2,3],2)
    script_execute(o.invSlot[2,4],2)
    
    if wepAnimType[2] = typeShield
    {
        hasShield = true
    }
    else
    {
        dualWield = true
    }
}

if dualWield = false and greatWeapon = false and hasShield = false
{
    mSkill += 1
    rSkill += 1
    cSkill += 1
    dodge += 5
}
break

case 2:
i = 1

invSwitch = 2

script_execute(o.invSlot[3,0],2)
script_execute(o.invSlot[3,2],2)
script_execute(o.invSlot[3,3],2)
script_execute(o.invSlot[3,4],2)
break
}

preArmourCustom()
script_execute(o.invSlot[4,0],2)
script_execute(o.invSlot[4,2],2)
script_execute(o.invSlot[4,3],2)
script_execute(o.invSlot[4,4],2)
postArmourCustom()

#define iCTraits
//Talents
for(i = 0; i < 8; i++)
{
    if o.talent[i,0] != emptyTalent
    {
        script_execute(o.talent[i,0],0,o.talent[i,5])
        script_execute(o.talent[i,1],0,o.talent[i,5])
        script_execute(o.talent[i,2],0,o.talent[i,5])
        script_execute(o.talent[i,3],0,o.talent[i,5])
    }
}

//Race Trait
script_execute(o.race,3)

//Status Effects
for(s = 0; s < ds_list_size(status); s++)
{
    with(ds_list_find_value(status,s))
    {
        script_execute(effect,1)
    }
}

#define iCAbilities
//Talents
for(i = 0; i < 8; i++)
{
    if o.talent[i,0] != emptyTalent
    {
        script_execute(o.talent[i,0],3,o.talent[i,5])
        script_execute(o.talent[i,1],3,o.talent[i,5])
        script_execute(o.talent[i,2],3,o.talent[i,5])
        script_execute(o.talent[i,3],3,o.talent[i,5])
    }
}

#define iC
iCStats()
iCSubStats()
iCWear()
iCEquip(invSwitch)
iCTraits()

if bold = 1
{
    haste += .5*(1+((fellowship-8)*.05))
    mSkill += 2*(1+((fellowship-8)*.05))
    rSkill += 2*(1+((fellowship-8)*.05))
    cSkill += 2*(1+((fellowship-8)*.05))
}

if o.mook = true
{
    wepPow[1] *= .75
    wepPow[2] *= .75
    wepRPow[1] *= .75
    wepRPow[2] *= .75
    atkHaste *= .7
    dodge -= 20
    blockStr *= .5
}

#define clearArmour
bodyItems = 0
chstItems = 0
hipsItems = 0
skrtItems = 0
beltItems = 0
headItems = 0
underHipsNum = 1

legsItems[1] = 0
legsItems[2] = 0
armsItems[1] = 0
armsItems[2] = 0

#define preArmourCustom
if race = "Tiefling"
{
    headItems += 1
    headItem[headItems] = spr_horns
    headColour[headItems] = skinTone
}

if eyeTrinket != -4
{
    headItems += 1
    headItem[headItems] = eyeTrinket
    headColour[headItems] = c_white
}

if underBodyItem != -4 and o.invSlot[4,0] != emptySlot
{
    bodyItems += 1
    bodyItem[bodyItems] = underBodyItem
    bodyColour[bodyItems] = c_white
    
    chstItems += 1
    chstItem[chstItems] = underBodyItem
    chstColour[chstItems] = c_white
}

if underLegsItem != -4 and o.invSlot[4,0] != emptySlot
{
    legsItems[1] += 1
    legsItem[legsItems[1],1] = underLegsItem
    legsColour[legsItems[1],1] = c_white
    
    legsItems[2] += 1
    legsItem[legsItems[2],2] = underLegsItem
    legsColour[legsItems[2],2] = c_white
    
    if underLegsItem = spr_fashion2
    {
        underHipsNum += 1
        hipsItems += 1
        hipsItem[hipsItems] = underLegsItem
    }
}


#define postArmourCustom
if neckTrinket != -4 and o.invSlot[4,0] != emptySlot
{
    bodyItems += 1
    bodyItem[bodyItems] = neckTrinket
    bodyColour[bodyItems] = c_white
    if neckTrinket = spr_fashion2
    {
        bodyColour[bodyItems] = favColour
    }
}

if overBodyItem != -4 and o.invSlot[4,0] != emptySlot
{
    hipsItems += 1
    hipsItem[hipsItems] = overBodyItem
    hipsColour[hipsItems] = c_dkgray

    bodyItems += 1
    bodyItem[bodyItems] = overBodyItem
    bodyColour[bodyItems] = c_dkgray
    
    chstItems += 1
    chstItem[chstItems] = overBodyItem
    chstColour[chstItems] = c_dkgray
}

if hipTrinket != -4 and o.invSlot[4,0] != emptySlot and rigid = false
{
    beltItems += 1
    beltItem[beltItems] = hipTrinket
    beltColour[beltItems] = c_white
}

if headTrinket != -4
{
    headItems += 1
    headItem[headItems] = headTrinket
    headColour[headItems] = c_white
}

if headScarfTrinket != -4
{
    hairVisible = 0    

    headItems += 1
    headItem[headItems] = headScarfTrinket
    headColour[headItems] = favColour
    
    bodyItems += 1
    bodyItem[bodyItems] = headScarfTrinket
    bodyColour[bodyItems] = favColour
}

//Min Clothing
if gender = femme and o.invSlot[4,0] = emptySlot
{
    chstItems += 1
    chstItem[chstItems] = spr_underClothes
    chstColour[chstItems] = c_white
    
    bodyItems += 1
    bodyItem[bodyItems] = spr_underClothes
    bodyColour[bodyItems] = c_white
}

if o.invSlot[4,0] = emptySlot
{
    hipsItems += 1
    hipsItem[hipsItems] = spr_underClothes
    hipsColour[hipsItems] = c_white
}

#define staminaCheck
if stm >= stmMax*.75
{
    //Fresh
    applyStatusEffect(fatigue,id,0,120)
}
else if stm >= stmMax*.50
{
    //Winded
    applyStatusEffect(fatigue,id,1,120)
}
else if stm >= stmMax*.50
{
    //Tired   
    applyStatusEffect(fatigue,id,2,120)
}
else
{
    stm = max(stm,0)
    //Exhausted   
    applyStatusEffect(fatigue,id,3,120)
}
#define adjacentCharacters
foeAdj = 0
allyAdj = 0

for(var j = 0; j < ds_list_size(isoTile.adjacent); j++)
{
    if(ds_list_find_value(isoTile.adjacent, j).occupant != noone)
    {
        if(ds_list_find_value(isoTile.adjacent, j).occupant.team != team)
        {
            foeAdj += 1
        }
        if(ds_list_find_value(isoTile.adjacent, j).occupant.team = team)
        {
            allyAdj += 1
        }
    }    
}