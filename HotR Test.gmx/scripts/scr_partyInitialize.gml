//Add to the List
scr_addActor()

//Temp Name
name = choose("Gae","Mop","Quar")+choose("ah","or","gash","ivik","k")

player = 0
node = noone

active = false

ii = 0
repeat(choose(3,4,5,6,7))
{

    inventory[ii,0] = choose(itemScript,greatSword)
    inventory[ii,1] = choose(0,1,2,3,4)
    inventory[ii,2] = 0
    inventory[ii,3] = 0
    inventory[ii,4] = 0
    ii += 1
    inventorySize = ii
}

//Temp
ii = 0
repeat(choose(3,4,5,6,7))
{
    i = instance_create(x,y,obj_characterSheet)
    i.party = id
    party[ii] = i
    ii += 1
}

