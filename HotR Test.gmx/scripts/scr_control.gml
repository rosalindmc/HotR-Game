//Player control script
//scr_control()

key_lftclicked = mouse_check_button_pressed(mb_left)
key_rgtclicked = mouse_check_button_pressed(mb_right)

if controlled = 1
{
    if key_rgtclicked = 1
    {
        //Check if attacking a character     
        global.id = -4
        global.team = team
        
        with(obj_character)
        {
            if team != global.team
            {
                if active = true
                {
                    if point_in_rectangle(mouse_x,mouse_y,x-size,y-height-h,x+size,y+size-h)
                    {
                        if global.id = -4
                        {
                            global.id = id
                        }
                        else if global.id.depth > depth
                        {
                            global.id = id
                        }
                    }
                }     
            }
        }
        
        //If attacking a character
        if global.id != -4
        {
        targetId = global.id
            //Double Click
            if global.rightMouse > 0
            {
                script_execute(act_charge,1)
            }
            else
            {
                script_execute(act_attack,1)
            }   
        }
        else
        {
            //Double Click
            if global.rightMouse > 0
            {
                script_execute(act_sprint,1)
            }
            else
            {
                script_execute(act_run,1)
            }   
        }    
    }
}
