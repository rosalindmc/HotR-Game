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
detailGen(cwName)
attributeGen()
classGen(class_warrior)
fashionInitialize()


#define orcVeteran
//Rules for an Orc Veteran
initializeHumanoid()
raceGen(race_orc)
detailGen(cwName)
attributeGen()
classGen(class_warrior)
fashionInitialize()


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
detailGen(cwName)
attributeGen()
classGen(class_thrall)
fashionInitialize()

//Names
firstName = 'Orc'
lastName = 'Thrall'

favColour = ltBlue
eyeTrinket = -4
neckTrinket = -4
overBodyItem = -4

#define goblinWarrior
//Rules for an Goblin Warrior
initializeHumanoid()
raceGen(race_goblin)
detailGen(cwName)
attributeGen()
classGen(class_thrall)
fashionInitialize()

//Names
firstName = 'Goblin'
lastName = 'Thrall'

favColour = make_colour_rgb(139,69,19)
eyeTrinket = -4
neckTrinket = -4
overBodyItem = -4