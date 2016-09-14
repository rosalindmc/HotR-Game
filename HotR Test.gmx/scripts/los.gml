#define los
//Line of Sight script
//los(rng, origin, target)

var sight = true
var zDif = argument2.isoZ-argument1.isoZ
var zCur = argument1.isoZ
var i, ix, iy, tx, ty, isX, isY, isZ

sight = true

if point_distance(0,0,argument2.x-argument1.x,(argument2.y-argument1.y)*2) < argument0*metre*1.5
{
    i = 0   
    repeat(abs(zDif)+1)
    {
        ix = argument1.x+((i/(abs(zDif)+1))*(argument2.x-argument1.x))
        iy = argument1.y+((i/(abs(zDif)+1))*(argument2.y-argument1.y))
        tx = argument1.x+(((i+1)/(abs(zDif)+1))*(argument2.x-argument1.x))
        ty = argument1.y+(((i+1)/(abs(zDif)+1))*(argument2.y-argument1.y))
        
        if i != abs(zDif)
        {
            isX = floor(((tx-100)/40)+((ty-100)/20))-25
            isY = floor(((ty-100)/20)-((tx-100)/40))+25
            isZ = zCur+max(0,sign(zDif))
            
            if obj_control.map[isX+(isZ*obj_control.mapWidth),isY].ground = true
            {
                sight = false
            }
        }
        
        if collision_line(ix,iy,tx,ty,losHeight(zCur),true,false)
        {
            sight = false
        }
          
        i += 1
        zCur += sign(zDif)
    }
}
else
{
    sight = false
}
return(sight)

#define losHeight
//returns the right parent for the inputted z level
//losHeight(heighttofind)

switch(argument0)
{
    case 0:
    return(obj_losBlockZ0)
    break
    case 1:
    return(obj_losBlockZ1)
    break
    case 2:
    return(obj_losBlockZ2)
    break
    case 3:
    return(obj_losBlockZ3)
    break
    case 4:
    return(obj_losBlockZ4)
    break
}