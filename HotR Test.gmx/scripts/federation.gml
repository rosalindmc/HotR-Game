#define federation


#define efName
switch(argument0)
{
case femme:
switch(min(irandom(24),irandom(50)))
{
    case 0: return 'Mary' break
    case 1: return 'Anna' break
    case 2: return 'Emma' break
    case 3: return 'Elizabeth' break
    case 4: return 'Margaret' break
    case 5: return 'Minnie' break
    case 6: return 'Ida' break
    case 7: return 'Bertha' break
    case 8: return 'Clara' break
    case 9: return 'Alice' break
    case 10: return 'Annie' break
    case 11: return 'Florence' break
    case 12: return 'Bessie' break
    case 13: return 'Grace' break
    case 14: return 'Ethel' break
    case 15: return 'Sarah' break
    case 16: return 'Ella' break
    case 17: return 'Martha' break
    case 18: return 'Nellie' break
    case 19: return 'Mabel' break
    case 20: return 'Laura' break
    case 21: return 'Carrie' break
    case 22: return 'Cora' break
    case 23: return 'Helen' break
    case 24: return 'Maude' break
}
break

case masc:
switch(min(irandom(24),irandom(50)))
{
    case 0: return 'John' break
    case 1: return 'William' break
    case 2: return 'James' break
    case 3: return 'George' break
    case 4: return 'Charles' break
    case 5: return 'Frank' break
    case 6: return 'Joseph' break
    case 7: return 'Henry' break
    case 8: return 'Robert' break
    case 9: return 'Thomas' break
    case 10: return 'Edward' break
    case 11: return 'Harry' break
    case 12: return 'Walter' break
    case 13: return 'Arthur' break
    case 14: return 'Fred' break
    case 15: return 'Albert' break
    case 16: return 'Samuel' break
    case 17: return 'Clarence' break
    case 18: return 'Louis' break
    case 19: return 'David' break
    case 20: return 'Joe' break
    case 21: return 'Charlie' break
    case 22: return 'Richard' break
    case 23: return 'Ernest' break
    case 24: return 'Roy' break
}
break
}

#define efScouting
createCharacterSheet(id,sepOfficer)

repeat(choose(4,6,8))
{
    createCharacterSheet(id,sepSoldier)
}


#define sepOfficer
//Rules for a Separatist Soldier
initializeHumanoid()
fashionInitialize()
raceGen(race_darkelf)
detailGen(efName)
attributeGen()
classGen(class_officer)

#define sepSoldier
//Rules for a Separatist Soldier
initializeHumanoid()
fashionInitialize()
raceGen(race_darkelf)
detailGen(efName)
attributeGen()
classGen(class_guerilla)

neckTrinket = -4
hipTrinket = -4
headTrinket = -4

overBodyItem = -4
underBodyItem = -4
underLegsItem = -4
sleeveVariant = 2

#define class_guerilla
className = 'Scout'

//Inventory
invSlot[1,0] = choose(dagger,knife,emptySlot)
invSlot[2,0] = choose(revolver,knife,emptySlot)
invSlot[3,0] = choose(carbine,carbine,carbine,carbine,carbine,repeaterCarbine,longRifle)
invSlot[4,0] = fedUniform

range = true

life += 2
classLife = .15
stamina += 4
classStamina = .20

mSkill = 2
rSkill = 3
cSkill = 1
classMSkill = .20
classRSkill = .25
classCSkill = .15

will += 1
grace += 2

//Talent
talent[0,0] = choose(treeMobility,treeMartial,treeSubterfuge,treeInsight)
talent[0,5] = 1
talent[1,0] = choose(treeSurvival)
talent[1,5] = 2

mook = true

#define class_officer
className = 'Officer'

//Inventory
invSlot[1,0] = choose(rapier,sabre)
invSlot[2,0] = choose(handCannon)
invSlot[3,0] = choose(carbine,carbine,carbine,carbine,carbine,repeaterCarbine,longRifle)
invSlot[4,0] = fedUniform

life += 4
classLife = .20
stamina += 4
classStamina = .20

mSkill = 3
rSkill = 3
cSkill = 1
classMSkill = .25
classRSkill = .25
classCSkill = .15

will += 2
fellowship += 1

//Talent
talent[0,0] = choose(treeMartial,treeDiscipline)
talent[0,5] = 1
talent[1,0] = choose(treeDiplomacy)
talent[1,5] = 2