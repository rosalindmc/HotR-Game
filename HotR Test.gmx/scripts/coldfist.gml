#define coldfist


#define cfName
switch(argument0)
{
case femme:
switch(min(irandom(24),irandom(50)))
{
    case 0: return 'Anna' break
    case 1: return 'Karen' break
    case 2: return 'Marie' break
    case 3: return 'Ellen' break
    case 4: return 'Else' break
    case 5: return 'Johanne' break
    case 6: return 'Agnes' break
    case 7: return 'Edith' break
    case 8: return 'Ingeborg' break
    case 9: return 'Gerda' break
    case 10: return 'Mary' break
    case 11: return 'Helga' break
    case 12: return 'Inger' break
    case 13: return 'Ane' break
    case 14: return 'Gudrun' break
    case 15: return 'Erna' break
    case 16: return 'Ella' break
    case 17: return 'Maren' break
    case 18: return 'Martha' break
    case 19: return 'Dagny' break
    case 20: return 'Dagmar' break
    case 21: return 'Margrethe' break
    case 22: return 'Kirstine' break
    case 23: return 'Laura' break
    case 24: return 'Sigrid' break
}
break

case masc:
switch(min(irandom(24),irandom(50)))
{
    case 0: return 'Hans' break
    case 1: return 'Jans' break
    case 2: return 'Niels' break
    case 3: return 'Svend' break
    case 4: return 'Carl' break
    case 5: return 'Karl' break
    case 6: return 'Peter' break
    case 7: return 'Johannes' break
    case 8: return 'Aage' break
    case 9: return 'Poul' break
    case 10: return 'Krugian' break
    case 11: return 'Knud' break
    case 12: return 'Alfred' break
    case 13: return 'Soren' break
    case 14: return 'Aksel' break
    case 15: return 'Henry' break
    case 16: return 'Anders' break
    case 17: return 'Henry' break
    case 18: return 'Holger' break
    case 19: return 'Kaj' break
    case 20: return 'Harald' break
    case 21: return 'Peder' break
    case 22: return 'Jorgen' break
    case 23: return 'Otto' break
    case 24: return 'Viggo' break
}
break
}
#define cfViking
//Create Party
repeat(choose(0,1))
{
    createCharacterSheet(id,cfThane)
}

repeat(choose(0,0,1,2))
{
    createCharacterSheet(id,cfVeteran)
}

repeat(choose(6,8,10,12))
{
    createCharacterSheet(id,choose(cfWarrior,cfThrall,cfGoblinWarrior))
}

/*
mooks[0,0] = emptySlot
mookTypes = 0

#define cfThane
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

#define cfVeteran
//Rules for an Orc Veteran
initializeHumanoid()
fashionInitialize()
raceGen(race_orc)
detailGen(cfName)
attributeGen()
classGen(class_warrior)

className = 'Veteran'
eyeTrinket = choose(-4,-4,-4,spr_fashion2)

experience += 5+irandom(10)
checkLevelUp(id)

#define cfWarrior
//Rules for an Orc Warrior
initializeHumanoid()
fashionInitialize()
raceGen(race_orc)
detailGen(cfName)
attributeGen()
classGen(class_warrior)

//Inventory
invSlot[1,0] = choose(battleAxe,armingSword)
invSlot[2,0] = choose(shortSword,handAxe,roundShield,emptySlot)
invSlot[3,0] = emptySlot
invSlot[4,0] = chainShirt

//Names
lastName = ''
mook = true

favColour = ltBlue
eyeTrinket = -4
neckTrinket = -4
overBodyItem = -4

#define cfThrall
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

#define cfGoblinWarrior
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

#define class_thrall
className = 'Thrall'

//Inventory
invSlot[1,0] = choose(battleAxe,armingSword)
invSlot[2,0] = choose(handAxe,roundShield,emptySlot)
invSlot[3,0] = choose(shortBow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = chainShirt

life += 0
classLife = .10
stamina += 0
classStamina = .10

mSkill = 0
rSkill = 1
cSkill = 0
classMSkill = .20
classRSkill = .20
classCSkill = .15

mook = true

#define class_thane
className = 'Thane'

//Inventory
invSlot[1,0] = choose(greatAxe,greatSword,warhammer,maul)
invSlot[2,0] = emptySlot
invSlot[3,0] = emptySlot
invSlot[4,0] = choose(chainMail,chainMail)

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

might += 2
will += 1

//Talent
talent[0,0] = treeStrength
talent[0,5] = 2