//Humanoid Walk Animation
//humanoidWalk(animationstage)

//Alarm
alarm[5] = (global.fspd*.2)
animStep[0] += 1
bodyTwist = 0

//Adjust Legs
switch(argument0)
{
    case 0:
    animStep[0] = 4
    legCross = 1-legCross
    animHumanoidWalk(4)
    break

    case 1:
    legRot[2-legCross] = 45*legAngleX*hFacing
    legAnim[2-legCross] = 0
    
    legRot[1+legCross] = -30*legAngleX*hFacing
    legAnim[1+legCross] = 4
    
    hipsThrust = 0
    hipsBounce = 1
    
    hipsRot = -15*legAngleX*hFacing
    skrtAnim = 4
    
    //Play sound
    //Interact with ground
    break

    case 2:
    legRot[2-legCross] = 30*legAngleX*hFacing
    legAnim[2-legCross] = 4
    legRot[1+legCross] = -15*legAngleX*hFacing
    legAnim[1+legCross] = 10
    
    bounce = 1
    hipsThrust = 0
    headThrust = 1
    hipsBounce = 0
        
    hipsRot = -10*legAngleX*hFacing
    skrtAnim = 2
    break
    
    case 3:
    legRot[2-legCross] = 15*legAngleX*hFacing
    legAnim[2-legCross] = 2
    legRot[1+legCross] = 15*legAngleX*hFacing
    legAnim[1+legCross] = 10
    
    bounce = 0
    hipsThrust = 0
    headThrust = 0
    
    hipsRot = -15*legAngleX*hFacing
    skrtAnim = 0
    break    
    
    case 4:
    legRot[2-legCross] = -10*legAngleX*hFacing
    legAnim[2-legCross] = 2
    legRot[1+legCross] = 30*legAngleX*hFacing
    legAnim[1+legCross] = 10
    
    hipsThrust = 0
    
    hipsRot = -10*legAngleX*hFacing
    skrtAnim = 4
    break
    
    case 5:
    legRot[2-legCross] = -30*legAngleX*hFacing
    legAnim[2-legCross] = 2
    legRot[1+legCross] = 45*legAngleX*hFacing
    legAnim[1+legCross] = 2
    
    hipsThrust = 0
    
    hipsRot = -15*legAngleX*hFacing
    skrtAnim = 4
    break
        
    case 6:
    animStep[0] = 1
    legCross = 1-legCross
    animHumanoidWalk(1)
    break
    
    case 10:
    legRot[1] = 0
    legAnim[1] = 2
    legRot[2] = 0
    legAnim[2] = 3
    hipsRot = 0
    hipsThrust = 1
    break
}
