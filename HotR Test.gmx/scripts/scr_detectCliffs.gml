//North
ii = collision_point(x,y-km,obj_parentTile,false,true) 
if ii != noone
{
    if ii.h < h
    {
        nBorderColour = cliffColour
        nBorder = spr_cliffTrim
    }
}

//East
ii = collision_point(x+km,y,obj_parentTile,false,true) 
if ii != noone
{
    if ii.h < h
    {
        eBorderColour = cliffColour
        eBorder = spr_cliffTrim
        if ii.object_index = obj_seaTile
        {
            eBorderWaterH = ii.h  
        }
    }
}

//South
ii = collision_point(x,y+km,obj_parentTile,false,true) 
if ii != noone
{
    if ii.h < h
    {
        sBorderColour = cliffColour
        sBorder = spr_cliffTrim
        cliffHeight = max(0,level-ii.level)
        
        if ii.object_index != obj_seaTile
        {
            depth -= 25
        }
    }
}

//West
ii = collision_point(x-km,y,obj_parentTile,false,true) 
if ii != noone
{
    if ii.h < h
    {
        wBorderColour = cliffColour
        wBorder = spr_cliffTrim
        if ii.object_index = obj_seaTile
        {
            wBorderWaterH = ii.h  
        }
    }
}

