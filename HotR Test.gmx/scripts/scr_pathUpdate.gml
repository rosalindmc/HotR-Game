//Reattempt pathfinding to fix any errors or adjust to changes
//scr_pathUpdate()
//Called in alarm[0] of obj_character

//Make a path
moveX = path_get_point_x(myPath,path_get_number(myPath))
moveY = path_get_point_y(myPath,path_get_number(myPath))

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
alarm[0] = global.fspd

