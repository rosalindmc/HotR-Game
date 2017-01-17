#define worldScrollVis
ix = 0
iy = 0
even = true

instance_deactivate_object(obj_worldTile)

repeat(mapWidth)
{
    repeat(mapHeight+even)
    {
    if 60+(ix*20) > view_xview
    and (ix*20)-20 < view_xview+view_wview
    and (iy*20)+50+(-10*even) > view_yview 
    and (iy*20)-10+(-10*even) < view_yview+view_hview
    {
        instance_activate_object(global.worldMap[ix,iy])
        //global.worldMap[ix,iy].vis = true
    }
    else
    {
        //global.worldMap[ix,iy].vis = false
    }
    
    iy += 1
    }
    
    ix += 1
    iy = 0
    even = 1-even
}

#define worldScrollOld
ix = 0
iy = 0
even = true

with(obj_worldTile)
{
    vis = false
}

repeat(mapWidth)
{
    repeat(mapHeight+even)
    {
    if 60+(ix*20) > view_xview
    and (ix*20)-20 < view_xview+view_wview
    and (iy*20)+50+(-10*even) > view_yview 
    and (iy*20)-10+(-10*even) < view_yview+view_hview
    {
        global.worldMap[ix,iy].vis = true
    }
    else
    {
        global.worldMap[ix,iy].vis = false
    }
    
    iy += 1
    }
    
    ix += 1
    iy = 0
    even = 1-even
}