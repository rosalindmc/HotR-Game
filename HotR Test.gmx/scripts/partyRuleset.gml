#define partyRuleset


#define cwParty
money = 0.00

//Inventory
ii = 0
repeat(choose(60))
{
    inventory[ii,0] = choose(
    choose(knife,dagger,armingSword,greatSword,shortSword,sabre,bastardSword),
    choose(handAxe,battleAxe,greatAxe),
    choose(halberd,shortSpear,spear,pike),
    choose(maul,lightMace,mace,hammer,warhammer,staff),
    choose(chainMail,chainShirt,breastPlate,plateMail,robe,dress),
    choose(heaterShield,squareShield,roundShield),
    choose(shortBow,crossbow,longBow))
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

playerControl = true


#define orcViking
//Create Party
repeat(choose(0,1))
{
    createCharacterSheet(id,orcThane)
}

repeat(choose(0,0,1,2))
{
    createCharacterSheet(id,orcVeteran)
}

repeat(choose(6,8,10,12))
{
    createCharacterSheet(id,choose(orcWarrior,goblinWarrior))
}
/*
mooks[0,0] = emptySlot
mookTypes = 0

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
