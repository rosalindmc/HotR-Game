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
        
        //Temporary     
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
    if vit <= 0
    {
        //Temporary, later create corpse and kill
    }
}
