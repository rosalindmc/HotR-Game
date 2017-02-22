//Draw an Actor and corresponding UI
if isoZ <= global.zLevel or global.zViewToggle = true
{ 
    //Selection is drawn first 
    //(This script will need to be altered when large creatures are implemented)
    if controlled = true
    {
        draw_sprite(spr_selection,image_index,isoTile.x,isoTile.y-isoTile.h+(global.zLevel*15))
    }
    
    //Draw Self
    script_execute(animType,1)
    
    if controlled = true
    {
        draw_sprite(spr_selectionDiamond,image_index,isoTile.x,isoTile.y-(height+10+isoTile.h)+(global.zLevel*15))
    }
}

