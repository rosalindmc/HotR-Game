//Add to the List
addActor()

player = 0
node = noone

active = false
party = ds_list_create()

ii = 0
repeat(choose(40))
{

    inventory[ii,0] = choose(
    choose(knife,dagger,armingSword,greatSword,shortSword,sabre),
    choose(handAxe,battleAxe,greatAxe),
    choose(halberd,shortSpear,spear,pike),
    choose(maul,lightMace,mace,hammer,warhammer),
    choose(robe,chainmail),
    choose(heaterShield),
    choose(shortbow,longBow))
    inventory[ii,1] = choose(0,0,0,1,1,1,1,1,1,1,1,1)
    inventory[ii,2] = 0
    inventory[ii,3] = 0
    inventory[ii,4] = 0
    ii += 1
    inventorySize = ii
}

//Temp
repeat(choose(5,6,7))
{
    i = instance_create(x,y,obj_characterSheet)
    i.party = id
    ds_list_add(party,i)
}
