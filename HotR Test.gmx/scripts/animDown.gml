//Downed Animation
//animDown(animStep)

//Alarm
alarm[5] = global.fspd*.2
animStep[0] += 1

animIndex[1] = animMeleeRest
animIndex[2] = animMeleeRest

hipsRot = 0
hipsBounce = 0

skrtAnim = 0
headThrust = 0

switch(argument0)
{
    case 0:
    animStep[0] = 4
    animDown(4)
    break
    
    case 1:
    legAnim[1] = 10
    legAnim[2] = 0
    hipsThrust = -2
    bounce = 0
    headFacing = -1
    hipsBounce = 0
    hipsAdjust = -8
    
    headRot = 110*hFacing
    bodyRot = 90*hFacing
    hipsRot = 90*hFacing
    legRot[1] = 45*hFacing
    legRot[2] = 90*hFacing
    break
    
    case 2:
    legAnim[1] = 10
    legAnim[2] = 0
    hipsThrust = -2
    bounce = 0
    headFacing = -1
    hipsBounce = 0
    hipsAdjust = -8
    
    headRot = 110*hFacing
    bodyRot = 90*hFacing
    hipsRot = 90*hFacing
    legRot[1] = 45*hFacing
    legRot[2] = 90*hFacing
    break
    
    case 3:
    legAnim[1] = 10
    legAnim[2] = 0
    hipsThrust = -2
    bounce = 0
    headFacing = -1
    hipsBounce = 0
    hipsAdjust = -8
    
    headRot = 110*hFacing
    bodyRot = 90*hFacing
    hipsRot = 90*hFacing
    legRot[1] = 45*hFacing
    legRot[2] = 90*hFacing
    break
    
    case 4:
    legAnim[1] = 10
    legAnim[2] = 0
    hipsThrust = -2
    bounce = 0
    headFacing = -1
    hipsBounce = 0
    hipsAdjust = -8
    
    headRot = 110*hFacing
    bodyRot = 90*hFacing
    hipsRot = 90*hFacing
    legRot[1] = 45*hFacing
    legRot[2] = 90*hFacing
    break
    
    case 5:
    animStep[0] = 1
    animDown(1)
    break
}
