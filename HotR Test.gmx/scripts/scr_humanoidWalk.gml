//Humanoid Walk Animation
//scr_humanoidWalk(animationstage)

switch(argument0)
{
    case 0:
    animation[1] = 5
    legcross = 1-legcross
    scr_humanoidWalk(animation[1])
    break

    case 1:
    leg_rot[2-legcross] = 45*leganglex*facingh
    leg_anim[2-legcross] = 0
    leg_rot[1+legcross] = -30*leganglex*facingh
    leg_anim[1+legcross] = 2
    hips_thrust = 0
    hips_rot = 30*leganglex*facingh*-sign(is_moving)
    
    //Play sound
    //Interact with ground
    break

    case 2:
    leg_rot[2-legcross] = 40*leganglex*facingh
    leg_anim[2-legcross] = 2
    leg_rot[1+legcross] = -5*leganglex*facingh
    leg_anim[1+legcross] = 5
    bounce = 0
    hips_thrust = 0
    hips_rot = 30*leganglex*facingh*-sign(is_moving)
    break
    
    case 3:
    leg_rot[2-legcross] = 10*leganglex*facingh
    leg_anim[2-legcross] = 1
    leg_rot[1+legcross] = 15*leganglex*facingh
    leg_anim[1+legcross] = 5
    bounce = 1
    hips_thrust = 0
    hips_rot = 30*leganglex*facingh*-sign(is_moving)
    break    
    
    case 4:
    leg_rot[2-legcross] = -10*leganglex*facingh
    leg_anim[2-legcross] = 1
    leg_rot[1+legcross] = 30*leganglex*facingh
    leg_anim[1+legcross] = 5
    bounce = 0
    hips_thrust = 0
    hips_rot = 30*leganglex*facingh*-sign(is_moving)
    break
    
    case 5:
    leg_rot[2-legcross] = -30*leganglex*facingh
    leg_anim[2-legcross] = 1
    leg_rot[1+legcross] = 40*leganglex*facingh
    leg_anim[1+legcross] = 1
    hips_thrust = 0
    hips_rot = 30*leganglex*facingh*-sign(is_moving)
    break
        
    case 6:
    animation[1] = 1
    legcross = 1-legcross
    scr_humanoidWalk(animation[1])
    break
    
    case 10:
    leg_rot[1] = 0
    leg_anim[1] = 2
    leg_rot[2] = 0
    leg_anim[2] = 3
    hips_rot = 0
    hips_thrust = 1
    break
}
