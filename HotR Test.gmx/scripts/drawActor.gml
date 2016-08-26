//Draw an Actor and corresponding UI

//Selection is drawn first 
//(This script will need to be altered when large creatures are implemented)
if controlled = true or team = 1
{
    draw_sprite(spr_selection,image_index,isoTile.x,isoTile.y+(global.zLevel*30)-isoTile.h)
}

//Draw Self
script_execute(animType,1)
