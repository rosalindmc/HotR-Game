#define actorDie
//Script for checking and killing off actors
//actorDie(Actor)

with(argument0)
{
    if life <= 0
    {
        //Temporary, later replace with OoA script
        isoTile.occupant = noone
        global.team = team
        instance_destroy()
        
        //Destroy Initiative Slot
        with(initSlot)
        {
            instance_destroy()
        }
        initiativeSlotReset()
        
        //Destroy Character Sheet (Temp char murder)
        if important = true
        {
            instance_activate_object(owner)
            with(owner)
            {
                characterDie()
            }
            instance_deactivate_object(owner)
        }
        
        //Temporary Battle End
        global.battleEnd = true
        with(obj_character)
        {
            if team = global.team
            {
                global.battleEnd = false
            }
        }
        
        if global.battleEnd = true
        {
            battleTeardown()
        }
    }
}

#define characterDie
instance_activate_object(party)

with(party)
{
    ii = ds_list_find_index(party,other)
    ds_list_delete(party,ii)
}

if ds_list_size(party.party) = 0
{
    with(party)
    {
        instance_destroy()
    }
}
else
{
    i = 1
    repeat(8)
    {
        if invSlot[i,0] != emptySlot
        {
            party.inventorySize += 1
            party.inventory[party.inventorySize-1,0] = invSlot[i,0]
            party.inventory[party.inventorySize-1,1] = invSlot[i,1]
            party.inventory[party.inventorySize-1,2] = invSlot[i,2]
            party.inventory[party.inventorySize-1,3] = invSlot[i,3]
            party.inventory[party.inventorySize-1,4] = invSlot[i,4]
        }
        i += 1
    }
}

instance_deactivate_object(party)            
instance_destroy()