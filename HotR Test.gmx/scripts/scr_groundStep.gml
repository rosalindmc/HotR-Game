//Find the floor this object is resting on, see if it is grounded, apply gravity
//scr_groundStep()
//Called in step event of an object that obeys gravity

/*TEMPORARILY DISABLED

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
    fh = 0
    dTerrain = false
}

//Apply Gravity
if h > fh
{
    grounded = false
    zspd += (grav*metre)/global.fspd
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
