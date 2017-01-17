//wipeTiles()
//Run to reset all tiles at the end of pathfinding

with(obj_tile)
{
    overlay = 0
    g = 0
    move = false
    rangedAttack = false
    meleeAttack = false
    pathParent = noone
    onPath = 0
    zoneControl = false
    
    if ground = false
    {
        instance_deactivate_object(id)
    }
}

