//Water Draw
draw_sprite(spr_water,0,x,y-h)
draw_sprite(sprite_index,image_index,x,y-h)
draw_sprite_ext(spr_shimmer,image_index,x,y-h,1,1,0,c_white,.05)

//Coasts
if nBorderNum != -4
{draw_sprite_ext(spr_cliffTrim,nBorderNum,x,y-(km/2)+1-h,nBorderX,1,0,borderColour,1)}
if sBorderNum != -4
{draw_sprite_ext(spr_cliffTrim,sBorderNum,x,y+(km/2)-1-h,sBorderX,1,180,borderColour,1)}
if eBorderNum != -4
{draw_sprite_ext(spr_cliffTrim,eBorderNum,x+(km/2)-1,y-h,eBorderX,1,270,borderColour,1)}
if wBorderNum != -4
{draw_sprite_ext(spr_cliffTrim,wBorderNum,x-(km/2)+1,y-h,wBorderX,1,90,borderColour,1)}
