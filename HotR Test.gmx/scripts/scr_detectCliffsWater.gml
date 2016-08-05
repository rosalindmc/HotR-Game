//North
ii = collision_point(x,y-km,obj_parentTile,false,true) 
if ii != noone
{
    if ii.h > h
    {
        sprite_index = spr_shallows
        nBorderNum = ii.sBorderNum
        nBorderX = ii.sBorderX
    }
}

//East
ii = collision_point(x+km,y,obj_parentTile,false,true) 
if ii != noone
{
    if ii.h > h
    {
        eBorderNum = ii.wBorderNum
        eBorderX = ii.wBorderX
    }
}

//South
ii = collision_point(x,y+km,obj_parentTile,false,true) 
if ii != noone
{
    if ii.h > h
    {
        sBorderNum = ii.nBorderNum
        sBorderX = ii.nBorderX
    }
}

//West
ii = collision_point(x-km,y,obj_parentTile,false,true) 
if ii != noone
{
    if ii.h > h
    {
        wBorderNum = ii.eBorderNum
        wBorderX = ii.eBorderX
    }
}

