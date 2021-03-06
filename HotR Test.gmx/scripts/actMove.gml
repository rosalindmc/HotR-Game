//Move Script
//actMove(howtouse)
//0 = By Frame, 1 = Start

switch(argument0)
{
case 0:
//Facing
moveX = pathArray[moveStep].x
moveY = pathArray[moveStep].y
moveZ = pathArray[moveStep].h+pathArray[moveStep].hAdj

//Horizontal Facing
if moveX > x
    hFacing = 1
if moveX < x
    hFacing = -1
    
//Vertical Facing
if moveY > y
    vFacing = 0
if moveY < y
    vFacing = 1

//Move
if moveDur > 1
{
    //Facing
    facing = round(point_direction(x,y,moveX,moveY)/45)*45
    
    //Movement
    x += (moveX-x)/moveDur
    y += (moveY-y)/moveDur
    h += (moveZ-h)/moveDur
    moveDur -= 1
}
else
{
    if moveStep < pathLength-1
    {
        //Continue path
        moveStep ++
        moveDur = (global.fspd*(point_distance(pathArray[moveStep].x,pathArray[moveStep].y,x,y)))/(movement*metre*1.5)
    }
    else
    {
        //Clear path when done moving
        actIdle(1)
        x = moveX
        y = moveY
        h = moveZ
        
        if lightSource = true
        {
        with(obj_control)
        {
            lightControl()
        }
        }
        
        if isoTile.retreatTile
        {
            retreatUnit(id)
        }
    }
}

if instance_exists(obj_control)
{
    iX = floor(((x-100)/40)+((y-100)/20))-25
    iY = floor(((y-100)/20)-((x-100)/40))+25
    iZ = floor((h+14)/15)
    if currentTile != obj_control.map[iX+(obj_control.mapWidth*iZ),iY]
    {
        currentTile = obj_control.map[iX+(obj_control.mapWidth*iZ),iY]
        if lightSource = true
        {
        with(obj_control)
        {
            lightControl()
        }
        }
    }
}
break

case 1:
//Move along path
moveStep = 1
moveDur = (global.fspd*(point_distance(pathArray[moveStep].x,pathArray[moveStep].y,x,y)))/(movement*metre*1.5)

//Facing
moveX = pathArray[moveStep].x
moveY = pathArray[moveStep].y
moveZ = pathArray[moveStep].h+pathArray[moveStep].hAdj

if pathLength > 3
{cFacing =  round(point_direction(pathArray[pathLength-3].x,pathArray[pathLength-3].y,pathArray[pathLength-2].x,pathArray[pathLength-2].y)/45)*45}
else
{cFacing =  round(point_direction(x,y,pathArray[pathLength-2].x,pathArray[pathLength-2].y)/45)*45}
  
//Temp establish animation
startAnimation(0,animHumanoidWalk)

actionString = "Moving"
action = actMove
break
}
