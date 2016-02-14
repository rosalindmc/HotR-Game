key_lftclicked = mouse_check_button_pressed(mb_left)
key_rgtclicked = mouse_check_button_pressed(mb_right)

if controlled = 1
{
if key_rgtclicked = 1
{
movex = mouse_x+xoff
movey = mouse_y+yoff
movestep = 0

//Make a path
mp_grid_path(global.grid,my_path,x,y,movex,movey,true)

ii = 0
    repeat(path_get_number(my_path))
    {
        if !collision_line(x,y,path_get_point_x(my_path,ii),path_get_point_y(my_path,ii),obj_terrain,false,true) 
        {
        movex = path_get_point_x(my_path,ii)
        movey = path_get_point_y(my_path,ii)
        movestep = ii
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
xoff = 0
yoff = 0
controlled = true
}
}
