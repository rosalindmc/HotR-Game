//wipeTiles()
//Run to reset all tiles at the end of pathfinding

with(obj_tile)
{
    overlay = 0
    g = 0
    move = false
    attack = false
    pathParent = noone
    onPath = 0
    
    if ground = false
    {
        instance_deactivate_object(id)
    }
}

