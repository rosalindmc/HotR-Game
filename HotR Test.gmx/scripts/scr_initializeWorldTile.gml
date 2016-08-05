//Initialize World Tile

//Establish main tile texture
image_index = random(20)
image_speed = 0
vis = true

//Other Visual Variables
nBorder = spr_hgGrassTrim
nBorderNum = random(10)
nBorderColour = c_white
nBorderX = choose(1,-1)

eBorder = spr_hgGrassTrim
eBorderNum = random(10)
eBorderColour = c_white
eBorderX = choose(1,-1)
eBorderWaterH = -4

sBorder = spr_hgGrassTrim
sBorderNum = random(10)
sBorderColour = c_white
sBorderX = choose(1,-1)

wBorder = spr_hgGrassTrim
wBorderNum = random(10)
wBorderColour = c_white
wBorderX = choose(1,-1)
wBorderWaterH = -4

cliffColour = c_green
waterColour = ltBlue
cliffType = spr_dirtCliff

//Height
level = 2
h = 0
cliffHeight = level-2
depth = -y

//Set Alarm to detect cliffs
alarm[0] = 25
alarm[1] = 2

//Destroy water
ii = collision_point(x,y,obj_seaTile,false,true)
if ii != noone
{
    with(ii)
    {
        instance_destroy()
    }
}
