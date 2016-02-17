//Selection control script
//scr_selection_control()
//Allows units to be selected

key_lftclicked = mouse_check_button_pressed(mb_left)
key[1] = keyboard_check_pressed(ord('1'))
key[2] = keyboard_check_pressed(ord('2'))
key[3] = keyboard_check_pressed(ord('3'))
key[4] = keyboard_check_pressed(ord('4'))
key[5] = keyboard_check_pressed(ord('5'))

//Create mouse selector
if key_lftclicked = true
{
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
