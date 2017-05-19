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
#define rangeDropoff
return point_distance(0,0,argument0.x-argument1.x,(argument0.y-argument1.y)*2)+max(0,argument1.h-argument0.h)
#define losLight
//losGrid(rng, origin, target)

var iX, iY, iZ, sX, sY, sZ, dX, dY, dZ, xySlope, xzSlope, yPlus, zPlus, success, longAxis

//figure out sX, sY and sZ
sX = floor(((argument1.x-100)/40)+((argument1.y-100)/20))-25
sY = floor(((argument1.y-100)/20)-((argument1.x-100)/40))+25
sZ = floor((argument1.h+14)/15)

//figure out dX, dY and dZ
dX = floor(((argument2.x-100)/40)+((argument2.y-100)/20))-25
dY = floor(((argument2.y-100)/20)-((argument2.x-100)/40))+25
dZ = floor((argument2.h+14)/15)

//start at the beggining
iX = sX
iY = sY
iZ = sZ

tX = sX
tY = sY
tZ = sZ

xPlus = 0
yPlus = 0
zPlus = 0

success = true

    //Find long axis
    if abs(sX-dX) >= abs(sY-dY) and abs(sX-dX) >= abs(sZ-dZ)      //x Long Axis
    {
        //find slope x/y
        xySlope = (dY-sY)/(abs(sX-dX))
    
        //find slope x/z
        xzSlope = (dZ-sZ)/(abs(sX-dX))
        
        longAxis = 0
    }
    else if abs(sY-dY) >= abs(sX-dX) and abs(sY-dY) >= abs(sZ-dZ) //y Long Axis
    {
        //find slope y/x
        yxSlope = (dX-sX)/(abs(sY-dY))
        
        //find slope y/z
        yzSlope = (dZ-sZ)/(abs(sY-dY))
        
        longAxis = 1
    }
    else                                                        //z Long Axis
    {     
        //find slope z/y
        zySlope = (dY-sY)/(abs(sZ-dZ))
        
        //find slope z/x
        zxSlope = (dX-sX)/(abs(sZ-dZ))
        
        longAxis = 2
    }

    
    //a light source always lights itself      
    obj_control.map[iX+(obj_control.mapWidth*iZ),iY].lR = max(global.i.spreadRed,obj_control.map[iX+(obj_control.mapWidth*iZ),iY].lR)
    obj_control.map[iX+(obj_control.mapWidth*iZ),iY].lG = max(global.i.spreadGreen,obj_control.map[iX+(obj_control.mapWidth*iZ),iY].lG)
    obj_control.map[iX+(obj_control.mapWidth*iZ),iY].lB = max(global.i.spreadBlue,obj_control.map[iX+(obj_control.mapWidth*iZ),iY].lB)
    
    //move one step towards dX, dY and dZ
    repeat(max(abs(sX-dX),abs(sY-dY),abs(sZ-dZ)))
    {
        //Adjust Coordinates
        switch(longAxis)
        {
        case 0:
        yPlus += xySlope
        zPlus += xzSlope
        tX += sign(dX-sX)
        break
        case 1:
        xPlus += yxSlope
        zPlus += yzSlope
        tY += sign(dY-sY)
        break
        case 2:
        xPlus += zxSlope
        yPlus += zySlope
        tZ += sign(dZ-sZ)
        break
        }
        
        //Do lateral moves
        if abs(yPlus) >= 1
        {
            tY += sign(yPlus)
            yPlus -= sign(yPlus)
        }
        
        if abs(zPlus) >= 1
        {
            tZ += sign(zPlus)
            zPlus -= sign(zPlus)
        }
        
        if abs(xPlus) >= 1
        {
            tX += sign(xPlus)
            xPlus -= sign(xPlus)
        }
        
        tX = median(0,tX,obj_control.mapWidth-1)
        tY = median(0,tY,obj_control.mapHeight-1)
        tZ = median(0,tZ,obj_control.mapDepth-1)
        
        /*
        show_message("x"+string(iX)+" y"+string(iY)+" z"+string(iZ)+"
        tX"+string(tX)+" tY"+string(tY)+" tZ"+string(tZ)+"
        sx"+string(sX)+" sy"+string(sY)+" sz"+string(sZ)+"
        dX"+string(dX)+" dY"+string(dY)+" dZ"+string(dZ)+" 
        long Axis"+string(longAxis)+" success"+string(success)+" 
        xPlus"+string(xPlus)+" yPlus"+string(yPlus)+" zPlus"+string(zPlus))
        */
        
        //Check continued success?
        if success = true
        {
            success = losAdjacent(iX,iY,iZ,tX,tY,tZ)
            
            //if success spread light
            if success = true
            {
                lM = min(1,(global.i.spreadStrength*metre*.5)/point_distance(obj_control.map[iX+(obj_control.mapWidth*iZ),iY].x,0,global.i.x,(obj_control.map[iX+(obj_control.mapWidth*iZ),iY].y-global.i.y)*2))
            
                obj_control.map[tX+(obj_control.mapWidth*tZ),tY].lR = max(global.i.spreadRed*lM,obj_control.map[tX+(obj_control.mapWidth*tZ),tY].lR)
                obj_control.map[tX+(obj_control.mapWidth*tZ),tY].lG = max(global.i.spreadGreen*lM,obj_control.map[tX+(obj_control.mapWidth*tZ),tY].lG)
                obj_control.map[tX+(obj_control.mapWidth*tZ),tY].lB = max(global.i.spreadBlue*lM,obj_control.map[tX+(obj_control.mapWidth*tZ),tY].lB)
            }
        }
        
        //move checker to new tile
        iX = tX
        iY = tY
        iZ = tZ
        
        //remove from the list
        ds_priority_delete_value(global.tiles,obj_control.map[iX+(obj_control.mapWidth*iZ),iY])
    }    

#define losAdjacent
var s = obj_control.map[argument0+(obj_control.mapWidth*argument2),argument1]
var d = obj_control.map[argument3+(obj_control.mapWidth*argument5),argument4]
var xy = false

if d.isoX < s.isoX      //Space West
{
    if s.wall[3] = noone or d.wall[1] = noone
    {
    xy = true
    }
}
else if d.isoX > s.isoX      //Space East
{
    if s.wall[1] = noone or d.wall[3] = noone
    {
    xy = true
    }
}

if d.isoY < s.isoY      //Space North
{
    if s.wall[0] = noone or d.wall[2] = noone
    {
    xy = true
    }
}
else if d.isoY > s.isoY      //Space South
{
    if s.wall[2] = noone or d.wall[0] = noone
    {
    xy = true
    }
}

if d.isoX = s.isoX and d.isoY = s.isoY
{
    xy = true
}

if xy = false
{
    return false
}

if d.isoZ > s.isoZ      //Space Above
{
    if (d.ground = false or s.space[4] > 0)
    {
        return true
    }
    else
    {
        return false
    }
}
else if d.isoZ < s.isoZ      //Space Below
{
    if (s.ground = false or d.space[4] > 0)
    {
        return true
    }
    else
    {
        return false
    }
}
else
{
    return true
}