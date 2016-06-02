//Charge Script
//act_charge(howtouse)
//0 = By Frame, 1 = Start

switch(argument0)
{
case 0:
//Update Foe Location
if distance_to_object(targetId) > engageRange*areaSize
{
    moveX = targetId.x
    moveY = targetId.y
}
else
{
    moveX = x
    moveY = y
}
mp_grid_path(global.grid,myPath,x,y,moveX,moveY,true)
moveStep = 0

break

case 1:
actionString = "Charging"
action = act_charge

moveX = mouse_x+xOff
moveY = mouse_y+yOff+global.mouseHAdj
moveStep = 0

//Make a path
mp_grid_path(global.grid,myPath,x,y,moveX,moveY,true)

//Set destination to last visible area on path
var ii = 0
repeat(path_get_number(myPath))
{
    if !collision_line(x,y,path_get_point_x(myPath,ii),path_get_point_y(myPath,ii),obj_terrain,false,true) 
    {
    moveX = path_get_point_x(myPath,ii)
    moveY = path_get_point_y(myPath,ii)
    moveStep = ii
    }
ii += 1
}
break
}
