#define commonwealth


#define cwRaceList
switch(irandom(15))
{
    case 0: 
    case 1: 
    case 2:
    case 3:
    case 4: 
    case 5: return race_highelf break
    case 6:
    case 7: 
    case 8: return race_irunian break
    case 9: return race_northerner break
    case 10: return race_dwarf break
    case 11: return race_halfling break
    case 12:
    case 13: 
    case 14: return race_orc break
    case 15: return race_tiefling break
}

#define cwName
switch(argument0)
{
case femme:
switch(min(irandom(39),irandom(100)))
{
    case 0: return 'Mary' break
    case 1: return 'Dorothy' break
    case 2: return 'Helen' break
    case 3: return 'Betty' break
    case 4: return 'Margaret' break
    case 5: return 'Ruth' break
    case 6: return 'Virginia' break
    case 7: return 'Doris' break
    case 8: return 'Mildred' break
    case 9: return 'Frances' break
    case 10: return 'Elizabeth' break
    case 11: return 'Evelyn' break
    case 12: return 'Anna' break
    case 13: return 'Marie' break
    case 14: return 'Alice' break
    case 15: return 'Jean' break
    case 16: return 'Shirley' break
    case 17: return 'Barbara' break
    case 18: return 'Irene' break
    case 19: return 'Marjorie' break
    case 20: return 'Florence' break
    case 21: return 'Lois' break
    case 22: return 'Martha' break
    case 23: return 'Rose' break
    case 24: return 'Lillian' break
    case 25: return 'Louise' break
    case 26: return 'Catherine' break
    case 27: return 'Ruby' break
    case 28: return 'Eleanor' break
    case 29: return 'Patricia' break
    case 30: return 'Gladys' break
    case 31: return 'Annie' break
    case 32: return 'Josephine' break
    case 33: return 'Thelma' break
    case 34: return 'Edna' break
    case 35: return 'Norma' break
    case 36: return 'Pauline' break
    case 37: return 'Lucille' break
    case 38: return 'Edith' break
    case 39: return 'Gloria' break
}
break

case masc:
switch(min(irandom(39),irandom(100)))
{
    case 0: return 'Robert' break
    case 1: return 'John' break
    case 2: return 'James' break
    case 3: return 'William' break
    case 4: return 'Charles' break
    case 5: return 'George' break
    case 6: return 'Joseph' break
    case 7: return 'Richard' break
    case 8: return 'Edward' break
    case 9: return 'Donald' break
    case 10: return 'Thomas' break
    case 11: return 'Frank' break
    case 12: return 'Harold' break
    case 13: return 'Paul' break
    case 14: return 'Raymond' break
    case 15: return 'Walter' break
    case 16: return 'Jack' break
    case 17: return 'Henry' break
    case 18: return 'Kenneth' break
    case 19: return 'Arthur' break
    case 20: return 'David' break
    case 21: return 'Albert' break
    case 22: return 'Harry' break
    case 23: return 'Eugene' break
    case 24: return 'Ralph' break
    case 25: return 'Howard' break
    case 26: return 'Carl' break
    case 27: return 'Will' break
    case 28: return 'Louis' break
    case 29: return 'Clarence' break
    case 30: return 'Earl' break
    case 31: return 'Roy' break
    case 32: return 'Fred' break
    case 33: return 'Joe' break
    case 34: return 'Francis' break
    case 35: return 'Lawrence' break
    case 36: return 'Herbert' break
    case 37: return 'Leonard' break
    case 38: return 'Ernest' break
    case 39: return 'Alfred' break
}
break
}

#define cwFashion

#define cwParty
money = 0.00

//Inventory
ii = 0
repeat(choose(120))
{
    inventory[ii,0] = choose(
    choose(knife,dagger,epee,armingSword,greatSword,longSword,shortSword,sabre,rapier,bastardSword),
    choose(handAxe,battleAxe,greatAxe),
    choose(halberd,shortSpear,spear,pike),
    choose(maul,lightMace,mace,hammer,warhammer,staff),
    choose(chainMail,chainShirt,breastPlate,robe,dress),
    choose(heaterShield,squareShield,roundShield),
    choose(shortBow,lightCrossbow,crossbow,longBow),
    choose(automatic,revolver,handCannon,repeaterCarbine,carbine,longRifle,recoilessRifle))
    inventory[ii,1] = choose(0,0,0,1,1,1,1,1,1,1,1,1)
    inventory[ii,2] = emptyMutator
    inventory[ii,3] = emptyMutator
    inventory[ii,4] = emptyMutator
    ii += 1
    inventorySize = ii
}

//Create Party
repeat(7)
{
    createCharacterSheet(id,cwAdventurer)
}

#define cwAdventurer
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(cwRaceList())
detailGen(cwName)
attributeGen()
classGen(classList())

repeat(choose(0,0,0,0,0,0,0,1,1,1,2,2,3,4))
{
    level += 1
    levelPending += 1
    levelControl(id,false)
    xpToLevel(id)
}