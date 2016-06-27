//Initialize World Tile

//Establish main tile texture
image_index = random(20)
image_speed = 0

//Other Visual Variables
nBorder = spr_hgGrassTrim
nBorderNum = random(20)
nBorderColour = c_white

eBorder = spr_hgGrassTrim
eBorderNum = random(20)
eBorderColour = c_white

sBorder = spr_hgGrassTrim
sBorderNum = random(20)
sBorderColour = c_white

wBorder = spr_hgGrassTrim
wBorderNum = random(20)
wBorderColour = c_white

cliffColour = c_green
cliffType = spr_dirtCliff

//Height
level = 2
h = 0
depth = -y

//temp
level = choose(1,1,1,1,1,2,3,3,3,3,3,4)
h = (level-2)*3

if level = 1
{
instance_create(x,y,obj_seaTile)
instance_destroy()
}

//Set Alarm to detect cliffs
alarm[0] = 3
