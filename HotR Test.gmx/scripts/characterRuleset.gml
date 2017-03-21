#define characterRuleset


#define cwAdventurer
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(cwRaceList())
detailGen(cwName)
attributeGen()
classGen(classList())


#define orcThane
//Rules for an Orc Thane
initializeHumanoid()
fashionInitialize()
raceGen(race_orc)
detailGen(cfName)
attributeGen()
classGen(class_thane)

eyeTrinket = choose(-4,-4,-4,spr_fashion2)

experience += 30+irandom(100)
checkLevelUp(id)

#define orcVeteran
//Rules for an Orc Veteran
initializeHumanoid()
fashionInitialize()
raceGen(race_orc)
detailGen(cfName)
attributeGen()
classGen(class_warrior)

eyeTrinket = choose(-4,-4,-4,spr_fashion2)

experience += 5+irandom(10)
checkLevelUp(id)

#define raiderCaptain
//Rules for a Raider Captain
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(cwName)
attributeGen()
classGen(class_warrior)


#define orcWarrior
//Rules for an Orc Warrior
initializeHumanoid()
fashionInitialize()
raceGen(race_orc)
detailGen(cfName)
attributeGen()
classGen(class_thrall)


//Names
lastName = ''

favColour = ltBlue
eyeTrinket = -4
neckTrinket = -4
overBodyItem = -4

#define goblinWarrior
//Rules for an Goblin Warrior
initializeHumanoid()
fashionInitialize()
raceGen(race_goblin)
detailGen(cfName)
attributeGen()
classGen(class_thrall)

//Names
lastName = ''

favColour = make_colour_rgb(139,69,19)
eyeTrinket = -4
neckTrinket = -4
overBodyItem = -4
#define cultChampion
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(cwRaceList())
detailGen(cwName)
attributeGen()
classGen(class_cultist)

experience += 5+irandom(10)
checkLevelUp(id)

#define cultWarrior
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(cwRaceList())
detailGen(cwName)
attributeGen()
classGen(class_cultist)


#define cultThrall
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(cwRaceList())
detailGen(cwName)
attributeGen()
classGen(class_thrall)

headScarfTrinket = spr_hood
favColour = choose(make_colour_rgb(49,19,9),make_colour_rgb(39,19,39),make_colour_rgb(19,19,39), make_colour_rgb(9,29,9),make_colour_rgb(39,19,19), make_colour_rgb(19,19,19))

invSlot[4,0] = robe
invSlot[1,0] = dagger
invSlot[2,0] = choose(dagger,knife,roundShield,emptySlot)