//Side Cliffs
draw_sprite_ext(cliffType,0,x,y-h+3,sBorderX,1,0,c_white,1)

//Coast
if eBorderWaterH != -4
{
   draw_sprite_ext(spr_coastTrim,eBorderNum,x+(km/2)+1,y-eBorderWaterH,eBorderX,1,90,waterColour,1) 
}
if wBorderWaterH != -4
{
   draw_sprite_ext(spr_coastTrim,wBorderNum,x-(km/2)-1,y-wBorderWaterH,wBorderX,1,270,waterColour,1) 
}

//Cliffs
ih = h-(3*(cliffHeight))-1
draw_sprite_ext(cliffType,sBorderNum+1,x,y-ih,sBorderX,1,0,c_white,1)
ih += 1
repeat(cliffHeight)
{
    draw_sprite_ext(cliffType,sBorderNum+1,x,y-ih,sBorderX,1,0,c_white,1)
    ih += 3
}

//Base Tile
draw_sprite(sprite_index,image_index,x,y-h)

//Edges
if nBorderColour = c_white
{draw_sprite_ext(nBorder,nBorderNum,x,y-(km/2)-h,nBorderX,1,180,nBorderColour,1)}
if eBorderColour = c_white
{draw_sprite_ext(eBorder,eBorderNum,x+(km/2),y-h,eBorderX,1,90,eBorderColour,1)}
if sBorderColour = c_white
{draw_sprite_ext(sBorder,sBorderNum,x,y+(km/2)-h,sBorderX,1,0,sBorderColour,1)}
if wBorderColour = c_white
{draw_sprite_ext(wBorder,wBorderNum,x-(km/2),y-h,wBorderX,1,270,wBorderColour,1)}

if nBorderColour != c_white
{draw_sprite_ext(nBorder,nBorderNum,x,y-(km/2)-h,nBorderX,1,180,nBorderColour,1)}
if eBorderColour != c_white
{draw_sprite_ext(eBorder,eBorderNum,x+(km/2),y-h,eBorderX,1,90,eBorderColour,1)}
if sBorderColour != c_white
{draw_sprite_ext(sBorder,sBorderNum,x,y+(km/2)-h,sBorderX,1,0,sBorderColour,1)}
if wBorderColour != c_white
{draw_sprite_ext(wBorder,wBorderNum,x-(km/2),y-h,wBorderX,1,270,wBorderColour,1)}
