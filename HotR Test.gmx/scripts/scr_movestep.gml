//Establish Movespeed
var moveT = (movement*areaSize)/global.fspd
legAngleX = .66

//Running?
if action = act_sprint or action = act_charge
{
moveT += (movementBonus*areaSize)/global.fspd
legAngleX = 1
}

if dTerrain = true
{
moveT *= .5
}

//Pathfinding
if distance_to_point(moveX,moveY) < moveT and moveStep != path_get_number(myPath)
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
if canMove = true and grounded = true
{
    isMoving = false
    
    if distance_to_point(moveX,moveY) > moveT
    {
        //Apply Acceleration
        hspd = sign(moveX-x)*min(abs(hspd+lengthdir_x(moveT*.1,point_direction(x,y,moveX,moveY))),abs(lengthdir_x(moveT,point_direction(x,y,moveX,moveY))))
        vspd = sign(moveY-y)*min(abs(vspd+lengthdir_y(moveT*.1,point_direction(x,y,moveX,moveY))),abs(lengthdir_y(moveT,point_direction(x,y,moveX,moveY))))
        isMoving = moveT
        
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

//Floor Finder
fid = instance_position(x,y,obj_floor)
if fid != -4
{
    if fid.difficult = true
    {
    dTerrain = true
    }
    else
    {
    dTerrain = false
    }

    if fid.ramp = false
    {
        fh = fid.h
    }
    else
    {
        script_execute(fid.ramp)
    }      
}
else
{
    fh = -1000
    dTerrain = false
}

//Apply Gravity
if h > fh
{
    grounded = false
    zspd += .4
    h -= zspd
}
if h <= fh
{
    grounded = true
    h = fh
    zspd = 0
}

//Animation Temp
if canMove = true and isMoving != false
{
    animIndex[0] = anim_humanoidWalk
    facing = round(point_direction(xprevious,yprevious,x,y)/30)*30
}
else
{
    animIndex[0] = anim_idle   
}
