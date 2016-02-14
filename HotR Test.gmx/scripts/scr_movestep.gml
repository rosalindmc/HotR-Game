//Progress
if distance_to_point(movex,movey) < movement and movestep != path_get_number(my_path)
{
    ii = 0
    repeat(path_get_number(my_path))
    {
        if !collision_line(x,y,path_get_point_x(my_path,ii),path_get_point_y(my_path,ii),obj_terrain,false,true) 
        {
        movex = path_get_point_x(my_path,ii)
        movey = path_get_point_y(my_path,ii)
        }
    ii += 1
    }
}

//Movement
is_moving = false

if distance_to_point(movex,movey) > 5
{
    //Apply Acceleration
    hspd = sign(movex-x)*min(abs(hspd+lengthdir_x(movement*.1,point_direction(x,y,movex,movey))),abs(lengthdir_x(movement,point_direction(x,y,movex,movey))))
    vspd = sign(movey-y)*min(abs(vspd+lengthdir_y(movement*.1,point_direction(x,y,movex,movey))),abs(lengthdir_y(movement,point_direction(x,y,movex,movey))))
    is_moving = true
    
    //Temporary Facing
    if hspd > 0
    {facing = 1}
    else
    {facing = -1}
}
else
{
    //Apply Friction
    hspd = sign(hspd)*max(abs(hspd)-abs(lengthdir_x(fric,point_direction(x,y,x+hspd,y+vspd))),0)
    vspd = sign(vspd)*max(abs(vspd)-abs(lengthdir_y(fric,point_direction(x,y,x+hspd,y+vspd))),0)
}

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


