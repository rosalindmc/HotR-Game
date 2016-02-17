//Player control script
//scr_control()

key_lftclicked = mouse_check_button_pressed(mb_left)
key_rgtclicked = mouse_check_button_pressed(mb_right)

if controlled = 1
{
    if key_rgtclicked = 1
    {
        moveX = mouse_x+xOff
        moveY = mouse_y+yOff
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
    }
}
    
if key_lftclicked = 1
{
    if point_in_rectangle(mouse_x,mouse_y,x-size,y-height,x+size,y+size)
    {
        if !keyboard_check(vk_shift)
        {
            with(obj_character)
            {
            controlled = false
            }
        }
    xOff = 0
    yOff = 0
    controlled = true
    }
}
