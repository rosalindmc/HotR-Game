#define characterRuleset


#define cwAdventurer
//Rules for a commonwealth adventurer
initializeHumanoid()
raceGen(cwRaceList())
detailGen(cwName)
attributeGen()
classGen(classList())
fashionInitialize()


#define orcThane
//Rules for an Orc Thane
initializeHumanoid()
raceGen(race_orc)
detailGen(cfName)
attributeGen()
classGen(class_warrior)
fashionInitialize()

eyeTrinket = choose(-4,-4,-4,spr_fashion2)

#define orcVeteran
//Rules for an Orc Veteran
initializeHumanoid()
raceGen(race_orc)
detailGen(cfName)
attributeGen()
classGen(class_warrior)
fashionInitialize()

eyeTrinket = choose(-4,-4,-4,spr_fashion2)

#define raiderCaptain
//Rules for a Raider Captain
initializeHumanoid()
raceGen(race_northerner)
detailGen(cwName)
attributeGen()
classGen(class_warrior)
fashionInitialize()

#define orcWarrior
//Rules for an Orc Warrior
initializeHumanoid()
raceGen(race_orc)
detailGen(cfName)
attributeGen()
classGen(class_thrall)
fashionInitialize()

//Names
lastName = ''

favColour = ltBlue
eyeTrinket = -4
neckTrinket = -4
overBodyItem = -4

#define goblinWarrior
//Rules for an Goblin Warrior
initializeHumanoid()
raceGen(race_goblin)
detailGen(cfName)
attributeGen()
classGen(class_thrall)
fashionInitialize()

//Names
lastName = ''

favColour = make_colour_rgb(139,69,19)
eyeTrinket = -4
neckTrinket = -4
overBodyItem = -4
