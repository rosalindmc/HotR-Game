#define animIdle
//Idle Animation
//animIdle(animStep)

//Alarm
alarm[5] = global.fspd*.2
animStep[0] += 1

hipsRot = 0
hipsBounce = 0

skrtAnim = 0
headThrust = 0

legRot[1] = 0
legRot[2] = 0

switch(argument0)
{
    case 0:
    animStep[0] = 4
    animIdle(4)
    break
    
    case 1:
    legAnim[1] = 4
    legAnim[2] = 6
    bounce = 0
    hipsThrust = 1
    hipsBounce = -1
    hipsAdjust = 0
    skrtAnim = 0
    break
    
    case 2:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    bounce = 1
    hipsBounce = 0
    hipsAdjust = 0
    skrtAnim = 0
    break
    
    case 3:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    break
    
    case 4:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    hipsBounce = 0
    hipsAdjust = 0
    skrtAnim = 0
    break
    
    case 5:
    animStep[0] = 1
    animIdle(1)
    break
}

#define animThrust
//Alarm
alarm[5] = global.fspd*.2
animStep[0] += 1

hipsRot = 0
hipsBounce = 0

skrtAnim = 0
headThrust = 0

legRot[1] = 0
legRot[2] = 0

switch(argument0)
{
    case 0:
    legAnim[1] = 8
    legAnim[2] = 4
    hipsThrust = -2
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 1
    
    hipsRot = 10*hFacing
    skrtAnim = 4
    break
    
    case 1:
    legAnim[1] = 0
    legAnim[2] = 6
    bounce = 0
    hipsThrust = 3
    hipsBounce = 0
    hipsAdjust = 0
    
    skrtAnim = 4
    break
    
    case 2:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 2
    bounce = 1
    hipsBounce = -1
    hipsAdjust = 0
    
    bodyRot = -15*hFacing
    hipsRot = -15*hFacing
    skrtAnim = 2
    break
    
    case 3:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    
    bodyRot = -10*hFacing
    hipsRot = -5*hFacing
    skrtAnim = 4
    break
    
    case 4:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    
    bodyRot = 0
    hipsRot = 0
    skrtAnim = 2
    break
    
    case 5:
    startAnimation(0,animIdle)
    break
}

#define animFlinch
//Alarm
alarm[5] = global.fspd*.15
animStep[0] += 1

hipsRot = 0
hipsBounce = 0

skrtAnim = 0
headThrust = 0

legRot[1] = 0
legRot[2] = 0

switch(argument0)
{
    case 0:
    legAnim[1] = 10
    legAnim[2] = 8
    hipsThrust = -4
    bounce = 0
    headFacing = -1
    hipsBounce = 0
    hipsAdjust = 0
    skrtAnim = 4
    
    headRot = 30*hFacing
    bodyRot = 45*hFacing
    hipsRot = 30*hFacing
    break
    
    case 1:
    legAnim[1] = 4
    legAnim[2] = 6
    bounce = 0
    headFacing = -1
    hipsThrust = -8
    hipsBounce = 0
    hipsAdjust = 0
    skrtAnim = 4
    
    headRot = 15*hFacing
    bodyRot = 30*hFacing
    hipsRot = 15*hFacing
    break
    
    case 2:
    legAnim[1] = 10
    legAnim[2] = 4
    hipsThrust = -6
    bounce = 1
    headFacing = 1
    hipsBounce = -1
    hipsAdjust = 0
    skrtAnim = 2
    
    headRot = 0
    bodyRot = 0
    hipsRot = 0
    break
    
    case 3:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = -3
    headFacing = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    break
    
    case 4:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    break
    
    case 5:
    startAnimation(0,animIdle)
    break
}

#define animFlinchForward
//Alarm
alarm[5] = global.fspd*.15
animStep[0] += 1

hipsRot = 0
hipsBounce = 0

skrtAnim = 0
headThrust = 0

legRot[1] = 0
legRot[2] = 0

switch(argument0)
{
    case 0:
    legAnim[1] = 6
    legAnim[2] = 6
    hipsThrust = 2
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 1
    
    headRot = 15*hFacing
    bodyRot = 15*hFacing
    hipsRot = -10*hFacing
    skrtAnim = 4
    break
    
    case 1:
    legAnim[1] = 0
    legAnim[2] = 6
    bounce = 1
    hipsThrust = 4
    hipsBounce = 0
    hipsAdjust = 0
    
    skrtAnim = 4
    break
    
    case 2:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 2
    bounce = 0
    hipsBounce = -1
    hipsAdjust = 0
    
    headRot = -30*hFacing
    bodyRot = -45*hFacing
    hipsRot = -30*hFacing
    skrtAnim = 2
    break
    
    case 3:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    
    headRot = 0
    bodyRot = -30*hFacing
    hipsRot = -15*hFacing
    skrtAnim = 4
    break
    
    case 4:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    
    bodyRot = 0
    hipsRot = 0
    skrtAnim = 2
    break
    
    case 5:
    startAnimation(0,animIdle)
    break
}

#define animDodge
//Alarm
alarm[5] = global.fspd*.15
animStep[0] += 1

hipsRot = 0
hipsBounce = 0

skrtAnim = 0
headThrust = 0

legRot[1] = 0
legRot[2] = 0

switch(argument0)
{
    case 0:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = -2
    bounce = 0
    headFacing = 1
    hipsBounce = 0
    hipsAdjust = 1
    skrtAnim = 4
    
    headRot = 30*hFacing
    bodyRot = 30*hFacing
    hipsRot = 15*hFacing
    break
    
    case 1:
    legAnim[1] = 4
    legAnim[2] = 6
    bounce = 1
    hipsThrust = -4
    hipsBounce = 0
    hipsAdjust = 2
    skrtAnim = 2
    
    headRot = 45*hFacing
    bodyRot = 45*hFacing
    hipsRot = 30*hFacing
    break
    
    case 2:
    legAnim[1] = 10
    legAnim[2] = 4
    hipsThrust = -2
    bounce = 0
    headFacing = 1
    hipsBounce = -1
    hipsAdjust = 1
    skrtAnim = 4
    
    headRot = 15*hFacing
    bodyRot = 30*hFacing
    hipsRot = 15*hFacing
    break
    
    case 3:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    headFacing = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    skrtAnim = 2
        
    headRot = 0
    bodyRot = 0
    hipsRot = 0
    break
    
    case 4:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    bounce = 0
    hipsBounce = 0
    hipsAdjust = 0
    break
    
    case 5:
    startAnimation(0,animIdle)
    break
}
