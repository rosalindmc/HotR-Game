//Draw an Actor and corresponding UI
if isoZ <= global.zLevel or global.zViewToggle = true
{ 
    //Selection is drawn first 
    //(This script will need to be altered when large creatures are implemented)
    if controlled = true
    {
        draw_sprite(spr_selection,image_index,isoTile.x,isoTile.y-isoTile.h+(global.zLevel*30))
    }
    
    //Draw Self
    script_execute(animType,1)
    draw_set_colour(c_red)
    draw_arrow(x,y,x+lengthdir_x(15,cFacing),y+lengthdir_y(15,cFacing),5)
    draw_set_colour(c_green)
    draw_arrow(x,y,x+lengthdir_x(15,facing),y+lengthdir_y(15,facing),5)
}

