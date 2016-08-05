//Initialize World Tile

//Establish main tile texture
image_index = random(10)
image_speed = .25
vis = true

//Other Variables
nBorderNum = -4
nBorderX = choose(1,-1)
eBorderNum = -4
eBorderX = choose(1,-1)
sBorderNum = -4
sBorderX = choose(1,-1)
wBorderNum = -4
wBorderX = choose(1,-1)
borderColour = ltBlue

//Height
level = 2
h = -1
waterHigh = false
depth = -y+1

//Set Alarm to detect cliffs
alarm[0] = 50
//alarm[1] = 20+random(5)
alarm[2] = 50+random(200)

//Destroy water
ii = collision_point(x,y,obj_seaTile,false,true)
if ii != noone
{
    with(ii)
    {
        instance_destroy()
    }
}
