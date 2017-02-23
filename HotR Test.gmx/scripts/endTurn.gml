#define endTurn
//End Turn script
//endTurn(delay)
with(obj_actionButton)
{
    instance_destroy()
}

with(global.control)
{
    staminaCheck()
}

with(obj_control)
{
    actNum = 0
    ds_list_destroy(global.moveTile)
    wipeTiles()
    
    global.control.controlled = false
    global.control.suppression = 0
    global.control.stm = max(0,global.control.stm)
    global.control = noone
    global.timeDelay = 1
    global.nextChar.delay += argument0
    global.attackFromTile = noone
    
    initiativeSlotReset()
    mapTimeOn = true
}

areaSuppression()

#define areaSuppression
with(obj_character)
{
    i = 0
    
    if threat = true
    {    
        repeat(ds_list_size(isoTile.adjacent))
        {
            with(ds_list_find_value(isoTile.adjacent,i))
            {
                if abs(angle_difference(other.cFacing, point_direction(other.isoTile.x,0,x,(y-other.isoTile.y)*2))) <= other.arc
                {
                    if occupant != noone
                    {
                        if other.team != occupant.team
                        {
                            //Suppress
                            suppress(occupant,1.0/(1+occupant.threatResist))                                              
                        }
                    }
                }
            }
        }
        i += 1
    }
}