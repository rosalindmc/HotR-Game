//Progress
if distance_to_point(moveX,moveY) < movement and moveStep != path_get_number(myPath)
{
    var ii = 0

    repeat(path_get_number(myPath))
    {   
        //First Collision Line
        if !collision_line(x,y,path_get_point_x(myPath,ii),path_get_point_y(myPath,ii),obj_terrain,false,true) 
        {   
            //Thick Collision Line
            if !collision_line(x+size,y,path_get_point_x(myPath,ii)+size,path_get_point_y(myPath,ii),obj_terrain,false,true) 
            if !collision_line(x-size,y,path_get_point_x(myPath,ii)-size,path_get_point_y(myPath,ii),obj_terrain,false,true) 
            if !collision_line(x,y+size,path_get_point_x(myPath,ii),path_get_point_y(myPath,ii)+size,obj_terrain,false,true) 
            if !collision_line(x,y-size,path_get_point_x(myPath,ii),path_get_point_y(myPath,ii)-size,obj_terrain,false,true) 
            {
            moveX = path_get_point_x(myPath,ii)
            moveY = path_get_point_y(myPath,ii)
            }
        }
    ii += 1
    }
}

//Movement
isMoving = false

if distance_to_point(moveX,moveY) > movement
{
    //Apply Acceleration
    hspd = sign(moveX-x)*min(abs(hspd+lengthdir_x(movement*.1,point_direction(x,y,moveX,moveY))),abs(lengthdir_x(movement,point_direction(x,y,moveX,moveY))))
    vspd = sign(moveY-y)*min(abs(vspd+lengthdir_y(movement*.1,point_direction(x,y,moveX,moveY))),abs(lengthdir_y(movement,point_direction(x,y,moveX,moveY))))
    isMoving = true
    
    //Horizontal Facing
    if hspd > 0
        hFacing = 1
    else
        hFacing = -1
        
    //Vertical Facing
    if vspd > 0
        vFacing = 0
    else
        vFacing = 1
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


