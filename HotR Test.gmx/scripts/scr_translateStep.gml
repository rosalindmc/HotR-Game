//Move the Object
//scr_translateStep()
//Called in step event of a moving object

//Horizontal Collision
if place_meeting(x+hspd,y,obj_solid)
{
    while !place_meeting(x+sign(hspd),y,obj_solid)
    {
        x += sign(hspd)
    }
    hspd = 0
}

x += hspd

//Vertical Collision
if place_meeting(x,y+vspd,obj_solid)
{
    while !place_meeting(x,y+sign(vspd),obj_solid)
    {
        y += sign(vspd)
    }
    vspd = 0
}

y += vspd
