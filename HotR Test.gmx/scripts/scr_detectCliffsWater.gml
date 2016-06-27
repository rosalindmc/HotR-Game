//North
ii = collision_point(x,y-km,obj_worldTile,false,true) 
if ii != noone
{
    if ii.h > h
    {
        sprite_index = spr_shallows
        nBorderNum = ii.sBorderNum
    }
}

//East
ii = collision_point(x+km,y,obj_worldTile,false,true) 
if ii != noone
{
    if ii.h > h
    {
        eBorderNum = ii.wBorderNum
    }
}

//South
ii = collision_point(x,y+km,obj_worldTile,false,true) 
if ii != noone
{
    if ii.h > h
    {
        sBorderNum = ii.nBorderNum
    }
}

//West
ii = collision_point(x-km,y,obj_worldTile,false,true) 
if ii != noone
{
    if ii.h > h
    {
        wBorderNum = ii.eBorderNum
    }
}

