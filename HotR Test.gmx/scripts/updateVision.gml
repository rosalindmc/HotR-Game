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
        
        with(obj_tile)
        {
            if vis != true
            {
                if ground = true or occupant = true
                {
                    if los(40,other.sightTile,sightTile)
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
        
        with(obj_character)
        {
            if team != other.team
            {
                if vis != true
                {
                    if los(40,other.sightTile,sightTile)
                    {
                        vis = true
                        isoTile.vis = true
                    }
                }
            }
        }
    }
}


#define updateScrollVis
view_xview = max(obj_camera.x-(view_wview/2),0)
view_yview = max(obj_camera.y-(view_hview/2),0)

with(obj_terrain)
{
    scrollVis = false
    
    if x > view_xview-40
    {if x < view_xview+view_wview+40
    {if y+h-(global.zLevel*15) > view_yview-20
    {if y+h-(global.zLevel*15) < view_yview+view_hview+50
    {scrollVis = true}}}}
}

with(obj_character)
{
    scrollVis = false
    
    if x > view_xview-40
    {if x < view_xview+view_wview+40
    {if y+h-(global.zLevel*15) > view_yview-20
    {if y+h-(global.zLevel*15) < view_yview+view_hview+50
    {scrollVis = true}}}}
}