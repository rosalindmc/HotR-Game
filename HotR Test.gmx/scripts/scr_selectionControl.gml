//Selection control script
//scr_selectionControl()
//Allows units to be selected

key_lftclicked = mouse_check_button_pressed(mb_left)
key[1] = keyboard_check_pressed(ord('1'))
key[2] = keyboard_check_pressed(ord('2'))
key[3] = keyboard_check_pressed(ord('3'))
key[4] = keyboard_check_pressed(ord('4'))
key[5] = keyboard_check_pressed(ord('5'))

if key_lftclicked = true
{
    //Single Target Select    
    with(obj_character)
    {
        if point_in_rectangle(mouse_x,mouse_y,x-size,y-height-h,x+size,y+size-h)
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
    
    //Portrait Select
    i = 1
    repeat(5)
    {
        if point_in_circle(mouse_x,mouse_y,view_xview[0]+30,view_yview[0]-10+(i*45),16)
        {
            if !keyboard_check(vk_shift)
            {
                with(obj_character)
                {
                    controlled = false
                }
            }
            control[i].xOff = 0
            control[i].yOff = 0
            control[i].controlled = true
        }
    i += 1
    }
    
    //Create Selector
    instance_create(mouse_x,mouse_y,obj_selector)
}


//Key selection
var i = 1

repeat(5)
{
    if key[i] = true
    {
        if !keyboard_check(vk_shift)
        {
            with(obj_character)
            {
            controlled = false
            }
        }
        control[i].controlled = true
    }
    i ++
}
