#define warhost


#define whName
switch(argument0)
{
case femme:
switch(min(irandom(24),irandom(50)))
{
    case 0: return 'Ursula' break
    case 1: return 'Ilse' break
    case 2: return 'Hildegard' break
    case 3: return 'Gerda' break
    case 4: return 'Ingeborg' break
    case 5: return 'Irmgard' break
    case 6: return 'Helga' break
    case 7: return 'Gertrud' break
    case 8: return 'Liselotte' break
    case 9: return 'Edith' break
    case 10: return 'Erika' break
    case 11: return 'Gisela' break
    case 12: return 'Elisabeth' break
    case 13: return 'Ruth' break
    case 14: return 'Anneliese' break
    case 15: return 'Margarethe' break
    case 16: return 'Margot' break
    case 17: return 'Erna' break
    case 18: return 'Hertha' break
    case 19: return 'Maria' break
    case 20: return 'Inge' break
    case 21: return 'Anna' break
    case 22: return 'Ingrid' break
    case 23: return 'Charlotte' break
    case 24: return 'Eva' break
}
break

case masc:
switch(min(irandom(24),irandom(50)))
{
    case 0: return 'Hans' break
    case 1: return 'Gunter' break
    case 2: return 'Karl' break
    case 3: return 'Heinz' break
    case 4: return 'Werner' break
    case 5: return 'Gerhard' break
    case 6: return 'Walther' break
    case 7: return 'Kurt' break
    case 8: return 'Horst' break
    case 9: return 'Helmut' break
    case 10: return 'Herbert' break
    case 11: return 'Ernst' break
    case 12: return 'Rudolf' break
    case 13: return 'Willi' break
    case 14: return 'Rolf' break
    case 15: return 'Erich' break
    case 16: return 'Heinrich' break
    case 17: return 'Otto' break
    case 18: return 'Wilhelm' break
    case 19: return 'Alfred' break
    case 20: return 'Hermann' break
    case 21: return 'Paul' break
    case 22: return 'Erwin' break
    case 23: return 'Wolfgang' break
    case 24: return 'Klaus' break
}
break
}
#define raidingParty
//Create Party
createCharacterSheet(id,raiderCaptain)

/*
mooks[0,0] = emptySlot
mookTypes = 0

#define cultParty
//Create Party
repeat(choose(0,1,2))
{
    createCharacterSheet(id,cultChampion)
}

repeat(choose(1,2,3,4))
{
    createCharacterSheet(id,cultWarrior)
}

repeat(choose(5,6,7,8,9,10))
{
    createCharacterSheet(id,cultThrall)
}
/*
mooks[0,0] = emptySlot
mookTypes = 0

#define raiderCaptain
//Rules for a Raider Captain
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(cwName)
attributeGen()
classGen(class_warrior)


#define cultChampion
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(cwName)
attributeGen()
classGen(class_cultist)

experience += 5+irandom(10)
checkLevelUp(id)

#define cultWarrior
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(cwName)
attributeGen()
classGen(class_cultist)


#define cultThrall
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(cwName)
attributeGen()
classGen(class_thrall)

headScarfTrinket = spr_hood
favColour = choose(make_colour_rgb(49,19,9),make_colour_rgb(39,19,39),make_colour_rgb(19,19,39), make_colour_rgb(9,29,9),make_colour_rgb(39,19,19), make_colour_rgb(19,19,19))

invSlot[4,0] = robe
invSlot[1,0] = dagger
invSlot[2,0] = choose(dagger,knife,roundShield,emptySlot)

#define class_cultist
className = 'Cultist'

//Inventory
invSlot[1,0] = dagger
invSlot[2,0] = choose(dagger,knife,roundShield,emptySlot)
invSlot[3,0] = choose(shortBow,crossbow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

life = 3
classLife = .14
stamina = 6
classStamina = .19

mSkill = 1
rSkill = 1
cSkill = 2
classMSkill = .15
classRSkill = .15
classCSkill = .20

will += 2
fellowship += 1

//Talent
talent[0,0] = choose(treeValour,treeSubterfuge,treeInsight)
talent[0,5] = 1
talent[1,0] = choose(treeKnowledge,treeAlchemy)
talent[1,5] = 2

headScarfTrinket = spr_hood
favColour = choose(make_colour_rgb(49,19,9),make_colour_rgb(39,19,39),make_colour_rgb(19,19,39), make_colour_rgb(9,29,9),make_colour_rgb(39,19,19), make_colour_rgb(19,19,19))