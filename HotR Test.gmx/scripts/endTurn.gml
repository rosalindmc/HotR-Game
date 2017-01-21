#define endTurn
//End Turn script
//endTurn(delay)
with(obj_actionButton)
{
    instance_destroy()
}

areaSuppression()

with(obj_control)
{
    actNum = 0
    ds_list_destroy(global.moveTile)
    wipeTiles()
    
    global.control.controlled = false
    global.control = noone
    global.timeDelay = 1
    global.nextChar.delay = argument0
    global.attackFromTile = noone
    
    initiativeSlotReset()
    mapTimeOn = true
}

#define areaSuppression
with(obj_character)
{
    i = 0
    
    repeat(ds_list_size(isoTile.adjacent))
    {
        with(ds_list_find_value(isoTile.adjacent,i))
        {
            if abs(angle_difference(other.facing, point_direction(other.x,0,x,(other.y-y)/2))) <= 100
            {
                if occupant != noone
                {
                    if other.team != occupant.team
                    {
                        //Suppress
                        suppress(occupant,1.0)                                              
                    }
                }
            }
        }
        i += 1
    }
}