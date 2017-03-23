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

raceName = 'Skeleton'
lastName = ''
race = race_undead
skinTone = c_white
headSprite = spr_skull
bodySprite = spr_ribCage
hipsSprite = spr_pelvis
hairStyle = spr_none
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

raceName = 'Zombie'
lastName = ''
race = race_undead
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

#define race_undead
switch(argument0)
{
case 3:     //Race Trait
sResist += 1
canBleed = false
tireless = true
noMorale = true
woundProof = true
break
}
