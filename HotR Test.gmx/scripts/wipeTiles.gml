//wipeTiles()
//Run to reset all tiles at the end of pathfinding

with(obj_tile)
{
    overlay = 0 //Overlay 0 is clear (no movement), 1 is sprint, 2 is walk
    g = 0
    move = false
    rangedAttack = false
    meleeAttack = false
    pathParent = noone
    onPath = 0
    zoneControl = false
    
    if ground = false and wall[0] = noone and wall[1] = noone and wall[2] = noone and wall[3] = noone
    {
        instance_deactivate_object(id)
    }
}

