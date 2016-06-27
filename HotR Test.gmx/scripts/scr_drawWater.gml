//Water Draw
draw_sprite(sprite_index,image_index,x,y-h)

if nBorderNum != -4
{draw_sprite_ext(spr_cliffTrim,nBorderNum,x,y-(km/2)+1-h,1,1,00,borderColour,1)}
if eBorderNum != -4
{draw_sprite_ext(spr_cliffTrim,eBorderNum,x+(km/2)-1,y-h,1,1,270,borderColour,1)}
if sBorderNum != -4
{draw_sprite_ext(spr_cliffTrim,sBorderNum,x,y+(km/2)-1-h,1,1,180,borderColour,1)}
if wBorderNum != -4
{draw_sprite_ext(spr_cliffTrim,wBorderNum,x-(km/2)+1,y-h,1,1,90,borderColour,1)}
