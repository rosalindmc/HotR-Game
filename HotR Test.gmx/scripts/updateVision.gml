#define updateVision
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
        vis = true
        global.id = isoTile
        
        with(obj_tile)
        {
            if vis != true
            {
                if ground = true or occupant = true
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
    }
}


#define updateScrollVis
with(obj_terrain)
{
    scrollVis = false
    
    if x > view_xview-40
    {if x < view_xview+view_wview+40
    {if y+h-(global.zLevel*30) > view_yview-20
    {if y+h-(global.zLevel*30) < view_yview+view_hview+50
    {scrollVis = true}}}}
}

with(obj_character)
{
    scrollVis = false
    
    if x > view_xview-40
    {if x < view_xview+view_wview+40
    {if y+h-(global.zLevel*30) > view_yview-20
    {if y+h-(global.zLevel*30) < view_yview+view_hview+50
    {scrollVis = true}}}}
}
