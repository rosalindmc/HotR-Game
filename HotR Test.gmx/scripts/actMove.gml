//Move Script
//actMove(howtouse)
//0 = By Frame, 1 = Start

switch(argument0)
{
case 0:
//Facing
moveX = pathArray[moveStep].x
moveY = pathArray[moveStep].y
moveZ = pathArray[moveStep].h

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
    }
}
break

case 1:
//Move along path
moveStep = 1
moveDur = (global.fspd*(point_distance(pathArray[moveStep].x,pathArray[moveStep].y,x,y)))/(movement*metre*1.5)

//Temp establish animation
startAnimation(0,animHumanoidWalk)

actionString = "Moving"
action = actMove
break
}
