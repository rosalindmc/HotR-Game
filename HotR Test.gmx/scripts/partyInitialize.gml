//Add to the List
addActor()

player = 0
node = noone

active = false
party = ds_list_create()

//Party Variables
money = 10.00
bold = 0

ii = 0
repeat(choose(40))
{

    inventory[ii,0] = choose(
    choose(knife,dagger,armingSword,greatSword,shortSword,sabre,bastardSword),
    choose(handAxe,battleAxe,greatAxe),
    choose(halberd,shortSpear,spear,pike),
    choose(maul,lightMace,mace,hammer,warhammer,staff),
    choose(robe,chainmail,dress),
    choose(heaterShield,squareShield,roundShield),
    choose(shortbow,longBow))
    inventory[ii,1] = choose(0,0,0,1,1,1,1,1,1,1,1,1)
    inventory[ii,2] = emptyMutator
    inventory[ii,3] = emptyMutator
    inventory[ii,4] = emptyMutator
    ii += 1
    inventorySize = ii
}

//Temp
repeat(choose(5,6,7))
{
    createCharacterSheet(id)
}
