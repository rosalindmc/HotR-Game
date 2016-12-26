//Add to the List
scr_addActor()

player = 0
node = noone

active = false

ii = 0
repeat(choose(40))
{

    inventory[ii,0] = choose(armingSword,greatSword,shortSword,sabre,robe,chainmail,battleAxe)
    inventory[ii,1] = choose(0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,3,3,4)
    inventory[ii,2] = 0
    inventory[ii,3] = 0
    inventory[ii,4] = 0
    ii += 1
    inventorySize = ii
}

//Temp
ii = 0
repeat(choose(5,6,7))
{
    i = instance_create(x,y,obj_characterSheet)
    i.party = id
    party[ii] = i
    ii += 1
}
