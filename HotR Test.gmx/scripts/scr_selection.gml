//Selection script
//scr_selection()
//Selects everyone in the box

if distance_to_point(mouse_x,mouse_y) > 5
{
    global.i = 0
    global.x = 0
    global.y = 0
    
    with(obj_character)
    {
    if player = 1
        {
        var i = min(mouse_x,obj_selector.x)
        var ii = max(mouse_x,obj_selector.x)
        var vi = min(mouse_y,obj_selector.y)
        var vii = max(mouse_y,obj_selector.y)
        
            if x >= i and x <= ii and y-h >= vi and y-h <= vii
            {
                global.control = id
                controlled = true
                global.x += x
                global.y += y
                global.i += 1
            }
            else
            {
                if !keyboard_check(vk_shift)
                {
                    controlled = false
                }
            }
        }
    }
    
    if global.i > 0
    {
        global.x = global.x/global.i
        global.y = global.y/global.i
    }
    
    with(obj_character)
    {
        if controlled = true
        {
            //Set the characters offset from group
            xOff = sign(x - global.x)*min(abs(x - global.x), metre*2)
            yOff = sign(y - global.y)*min(abs(y - global.y), metre*2)
        }
    }
}

instance_destroy()

