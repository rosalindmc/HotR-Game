//North
ii = collision_point(x,y-km,obj_worldTile,false,true) 
if ii != noone
{
    if ii.h < h
    {
        nBorderColour = cliffColour
        nBorder = spr_cliffTrim
    }
}

//East
ii = collision_point(x+km,y,obj_worldTile,false,true) 
if ii != noone
{
    if ii.h < h
    {
        eBorderColour = cliffColour
        eBorder = spr_cliffTrim
    }
}

//South
ii = collision_point(x,y+km,obj_worldTile,false,true) 
if ii != noone
{
    if ii.h < h
    {
        sBorderColour = cliffColour
        sBorder = spr_cliffTrim
    }
}

//West
ii = collision_point(x-km,y,obj_worldTile,false,true) 
if ii != noone
{
    if ii.h < h
    {
        wBorderColour = cliffColour
        wBorder = spr_cliffTrim
    }
}

