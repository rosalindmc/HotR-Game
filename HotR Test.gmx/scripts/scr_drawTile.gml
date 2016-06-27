//Cliffs
ih = -3
repeat(level-1)
{
    draw_sprite(cliffType,sBorderNum,x,y-ih)
    ih += 3
}

//Base Tile
draw_sprite(sprite_index,image_index,x,y-h)

//Edges
if nBorderColour = c_white
{draw_sprite_ext(nBorder,nBorderNum,x,y-(km/2)-h,1,1,180,nBorderColour,1)}
if eBorderColour = c_white
{draw_sprite_ext(eBorder,eBorderNum,x+(km/2),y-h,1,1,90,eBorderColour,1)}
if sBorderColour = c_white
{draw_sprite_ext(sBorder,sBorderNum,x,y+(km/2)-h,1,1,0,sBorderColour,1)}
if wBorderColour = c_white
{draw_sprite_ext(wBorder,wBorderNum,x-(km/2),y-h,1,1,270,wBorderColour,1)}

if nBorderColour != c_white
{draw_sprite_ext(nBorder,nBorderNum,x,y-(km/2)-h,1,1,180,nBorderColour,1)}
if eBorderColour != c_white
{draw_sprite_ext(eBorder,eBorderNum,x+(km/2),y-h,1,1,90,eBorderColour,1)}
if sBorderColour != c_white
{draw_sprite_ext(sBorder,sBorderNum,x,y+(km/2)-h,1,1,0,sBorderColour,1)}
if wBorderColour != c_white
{draw_sprite_ext(wBorder,wBorderNum,x-(km/2),y-h,1,1,270,wBorderColour,1)}



