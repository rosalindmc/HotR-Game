//Script for checking and killing off actors
//actorDie(Actor)

with(argument0)
{
    if life <= 0
    {
        //Temporary, later replace with OoA script
        isoTile.occupant = noone
        instance_destroy()
        
        //Destroy Initiative Slot
        with(initSlot)
        {
            instance_destroy()
        }
        initiativeSlotReset()
        
        //Temporary
        battleTeardown()
    }
    if vit <= 0
    {
        //Temporary, later create corpse and kill
    }
}
