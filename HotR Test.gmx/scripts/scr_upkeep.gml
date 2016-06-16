//Regenerate Vitals, advance attack clock and other vital frame by frame operations
//scr_upkeep()
//Run in the step event of any actor

//Regenerate life (Life regen measured in life per 5 seconds)
regenTime += lifeRegen/(global.fspd*5)

if regenTime >= 1
{
    if life < lifeMax
    {
    life += 1
    }
    regenTime -= 1
}

//Attack clock advance
atkTime += atkHaste/(global.fspd)

//Life cap (inactive characters return to being active when they reach full health, active characters deactivate when reduced to 0 life)
if life >= lifeMax
{
    life = lifeMax
    active = true
}
else if life < 0
{
    life = 0
    active = false
    
    //Insert a defeat script here later
}

//Visualize life changes for healthbar
lifeVis += (life-lifeVis)/(global.fspd/5)

//Below are scripts occasionally used to test functionality in the upkeep of characters
/*Temp
if keyboard_check_pressed(ord('V')) and controlled = true
{
    anim_start(1,choose(anim_downSwing,anim_crossSwing))
}

if keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left) != 0 and controlled = true
{
    i = choose(1,1,1,2,2)
    life += i*(keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left))

    ii = instance_create(x,y-h-height,obj_descriptor)
    ii.text = i
    ii.font = fnt_tiny
    
    if keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left) > 0
    {
    ii.colour1 = c_green
    ii.colour2 = c_white  
    }
    else
    {
    ii.colour1 = dkRed
    ii.colour2 = c_red  
    }
}

if keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down) != 0 and controlled = true
{
    i = choose(3,4,5,6,7,8,9,10)
    life += i*(keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down))
    
    ii = instance_create(x,y-h-height,obj_descriptor)
    ii.text = i
    
    if keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down) > 0
    {
    ii.colour1 = c_green
    ii.colour2 = c_white  
    }  
}

if controlled = true
{
    lifeMax += 4*(keyboard_check_pressed(ord('Q'))-keyboard_check_pressed(ord('E')))
    vit += 1*(keyboard_check_pressed(ord('R'))-keyboard_check_pressed(ord('T')))
    stm += 1*(keyboard_check_pressed(ord('F'))-keyboard_check_pressed(ord('G')))
    mor += 1*(keyboard_check_pressed(ord('V'))-keyboard_check_pressed(ord('B')))
}


//Arm Adjust Temp
armMax += keyboard_check_pressed(ord('Y'))-keyboard_check_pressed(ord('U'))
arm += keyboard_check_pressed(ord('Y'))-keyboard_check_pressed(ord('U'))
arm += keyboard_check_pressed(ord('H'))-keyboard_check_pressed(ord('J'))
