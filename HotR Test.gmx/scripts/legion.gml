#define legion

#define undeadBand
//Create Party
repeat(choose(4,5,6,7))
{
    createCharacterSheet(id,boneWarrior)
}

repeat(choose(4,5,6,7))
{
    createCharacterSheet(id,zombie)
}


#define boneWarrior
//Rules for a Bone Warrior
initializeHumanoid()
fashionInitialize()
raceGen(cwRaceList())
detailGen(cwName)
attributeGen()
classGen(class_warrior)

lastName = ''
raceName = 'Skeleton'
race = race_skeleton
skinTone = c_white
headSprite = spr_skull
bodySprite = spr_ribCage
hipsSprite = spr_pelvis
hairStyle = spr_none
beardStyle = spr_none
earSprite = spr_none
chstImage = 0

favColour = clothTeal
eyeTrinket = -4
backTrinket = -4
neckTrinket = -4
headTrinket = -4
headScarfTrinket = -4

underBodyItem = -4
underLegsItem = -4

mook = true
checkLevelUp(id)

#define zombie
//Rules for a Zombie
initializeHumanoid()
fashionInitialize()
raceGen(cwRaceList())
detailGen(cwName)
attributeGen()
classGen(class_thrall)

invSlot[4,0] = choose(chainShirt,robe)

lastName = ''
raceName = 'Zombie'
race = race_zombie
skinTone = make_colour_rgb(190,240,215)
headSprite = spr_oldHead
hairColour = c_black
chstImage = 0

favColour = clothTeal
eyeTrinket = -4
backTrinket = -4
neckTrinket = -4
headTrinket = -4
headScarfTrinket = -4

underBodyItem = -4
underLegsItem = -4

grace -= 4
mook = true
checkLevelUp(id)

#define race_zombie
switch(argument0)
{
case 3:     //Race Trait
raceName = 'Zombie'
sResist += 1
tireless = true
noMorale = true
woundProof = true
break
}

#define race_skeleton
switch(argument0)
{
case 3:     //Race Trait
race = 'Skeleton'
sResist += 1
resist[typeRend] = 2
resist[typePierce] = 8
canBleed = false
tireless = true
noMorale = true
woundProof = true
break
}