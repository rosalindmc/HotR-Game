#define los
//Line of Sight script
//los(rng, origin, target)

var sight = true
var zDif = argument2.isoZ-argument1.isoZ
var zCur = argument1.isoZ
var i, ix, iy, tx, ty, isX, isY, isZ

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
                return false
            }
        }
        
        if collision_line(ix,iy,tx,ty,losHeight(zCur),true,false)
        {
            return false
        }
          
        i += 1
        zCur += sign(zDif)
    }
}
else
{
    return false
}
return true


#define losCheck
//Line of Sight script
//los(rng, origin, target)

var sight = true
var zDif = argument2.isoZ-argument1.isoZ
var zCur = argument1.isoZ
var i, ix, iy, tx, ty, isX, isY, isZ

draw_line(argument1.x,argument1.y+(global.zLevel*15),argument1.x,argument1.y+(global.zLevel*15)-10)
draw_line(argument2.x,argument2.y+(global.zLevel*15),argument2.x,argument2.y+(global.zLevel*15)-10)

sight = true
draw_set_colour(c_white)

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
                draw_set_colour(c_red)
                draw_line(tx-5,ty-5+(global.zLevel*15),tx+5,ty+5+(global.zLevel*15))
            }
        }
        
        if collision_line(ix,iy,tx,ty,losHeight(zCur),true,false)
        {
            sight = false
            draw_set_colour(c_red)
        }
          
        draw_arrow(ix,iy+(global.zLevel*15)-(zCur*15),tx,ty+(global.zLevel*15)-(zCur*15),8)
        
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
    case 5:
    return(obj_losBlockZ5)
    break
    case 6:
    return(obj_losBlockZ6)
    break
    case 7:
    return(obj_losBlockZ7)
    break
    case 8:
    return(obj_losBlockZ8)
    break
    case 9:
    return(obj_losBlockZ9)
    break
    case 10:
    return(obj_losBlockZ10)
    break
}

#define checkRange
//Check the range between two objects
//checkRange(object, target)

var ret = 0
var d = 0
with (obj_camera){
    if (argument1.id == id){
        ret = 1000
        }
    else if (argument0.id == id){
        ret = 1000
        }
}

if (ret = 0){
    var distance = sqrt(power(sqrt(power((argument1.x-argument0.x),2) + power((argument1.y-argument0.y)*2,2)),2) + power(argument1.h-argument0.h,2))
}

while (ret = 0){

    if distance > d * metre * 1.5{
        d++
    }
    else{
        ret = d
    }
}

return(ret)