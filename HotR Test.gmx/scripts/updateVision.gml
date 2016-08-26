with(obj_tile)
{
    if vis = true
    {
    vis = 2
    }
}

with(obj_character)
{
    vis = false
    if team = 1
    {
        global.id = isoTile
        
        with(obj_tile)
        {
            if los(40,global.id,id)
            {
                vis = true
                if instance_exists(occupant)
                {
                    occupant.vis = true
                }
            }
        }
    }
}

