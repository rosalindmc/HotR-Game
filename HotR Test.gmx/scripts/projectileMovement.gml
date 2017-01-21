#define projectileMovement
//What hath I wrought
//projectileMovement()

//Handle Z
zprevious = z
z += zspd
zspd -= (grav*metre)/global.fspd

//Move forward 2 pixels at a time (no barrier is narrower)
move += spd

isoZ = floor(z/30)

if isoZ < 0
{
    move = -100
}
else if isoZ < obj_control.mapDepth+1
{
    while(move >= 2)
    {
        x += lengthdir_x(2,dir)
        y += lengthdir_y(2,dir)
        
        isoX = floor(((x-100)/40)+((y-100)/20))-25
        isoY = floor(((y-100)/20)-((x-100)/40))+25
        
        if isoX < 0 or isoY < 0 or isoX >= obj_control.mapWidth or isoY >= obj_control.mapHeight
        {
            move = -100
        }
        else
        {
            move -= 2
            projectileCollision()
        }
    }
}
else
{
    x += lengthdir_x(move,dir)
    y += lengthdir_y(move,dir)
    move = 0
}

if move = -100
{
    instance_destroy()
}
else
{
    i = 0
    repeat(min(obj_control.mapDepth,isoZ))
    {
        if obj_control.map[isoX+(obj_control.mapWidth*i),isoY].ground = true
        {
            gz = obj_control.map[isoX+(obj_control.mapWidth*i),isoY].h
        }
        
        i += 1
    }
}





#define projectileCollision
//Run everytime the projectile increments closer to its destination
//projectileCollision()

var i = id
var ii = losHeight(isoZ)

with(obj_character)
{
    if i.owner != id
    {
        if i.z > h
        {
            if i.z < h+height
            {   
                //Adjust for Size
                if abs(isoX-i.isoX) <= 1
                {
                    if abs(isoY-i.isoY) <= 1
                    {
                        if collision_point(i.x,i.y,id,true,false)
                        {
                            i.collision = id
                            i.move = -100
                            exit
                        }
                    }
                }
            }
        }
    }
}

with(ii)
{
    if i.z > h
    {
        if i.z < h+height
        {
            if abs(isoX-i.isoX) <= 1
            {
                if abs(isoY-i.isoY) <= 1
                {
                    if collision_point(i.x,i.y,id,true,false)
                    {
                        i.move = -100
                        exit
                    }
                }
            }
        }
    }
}

if i.isoZ < obj_control.mapDepth
{
    with(obj_control.map[i.isoX+(obj_control.mapWidth*i.isoZ),i.isoY])
    {
        if ground = true
        {
            if isoZ != 0
            {
                if h >= min(i.z,i.zprevious)
                {
                    if h <= max(i.z,i.zprevious)
                    {
                        if collision_point(i.x,i.y,id,true,false)
                        {
                            i.move = -100
                            exit
                        }
                    }
                }
            }
        }
    }
    
    if i.isoZ < obj_control.mapDepth-1
    {
        with(obj_control.map[i.isoX+(obj_control.mapWidth*(i.isoZ+1)),i.isoY])
        {
            if ground = true
            {
                if isoZ != 0
                {
                    if h >= min(i.z,i.zprevious)
                    {
                        if h <= max(i.z,i.zprevious)
                        {
                            if collision_point(i.x,i.y,id,true,false)
                            {
                                i.move = -100
                                exit
                            }
                        }
                    }
                }
            }
        }
    }
}