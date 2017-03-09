#define actorDie
//Script for checking and killing off actors
//actorDie(Actor)

with(argument0)
{
    if life <= 0
    {
        //Out of Action
        global.team = team
        active = false
        
        if o.mook = true
        {
            dead = true
        }
        else
        {
            woundCheck(wounds)
            wounds = min(3,wounds+1)
        }
        
        life += floor(lifeMax*.75)
        lifeVis = lifeMax
        startAnimation(0,animDown)
        
        //Destroy Initiative Slot
        with(initSlot)
        {
            instance_destroy()
        }
        initiativeSlotReset()
        
        if expEarned = false
        {
            expEarned = true
            global.expTotal += expOnKill
        }
        
        if dead = true
        {
            isoTile.occupant = noone
            
            //Destroy Character Sheet (Temp char murder)
            if important = true
            {
                instance_activate_object(owner)
                with(owner)
                {
                    if mook = false
                    {
                        createNotification(string(firstName)+' was killed',ico_death,1)
                    }
                    characterDie()
                }
                instance_deactivate_object(owner)
            }
        }
        
        //Temporary Battle End
        global.battleEnd = true
        
        with(obj_character)
        {
            if team = global.team and active = true
            {
                global.battleEnd = false
                
                if los(5,obj_control.map[other.isoX+(obj_control.mapWidth*other.isoZ),other.isoY],isoTile)
                {
                    suppress(id,2.0-(stubborn*1.1))
                }
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
#define actorRevive
active = true
startAnimation(0,animIdle)

initSlot = instance_create(20,20,obj_initiativeSlot)
initSlot.owner = id
initSlot.order = 0
initSlot.delay = 2
initiativeSlotReset()

#define woundCheck
    if argument0 >= 2 and 1+irandom(99) < 75
    {
        dead = true
    }
    else if argument0 >= 1 and 1+irandom(99) < 75
    {
        //Get Wounded
    }
    else
    {
        //Nothing
    }