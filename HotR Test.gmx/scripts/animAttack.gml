//Idle Animation
//animIdle(animStep)

//Alarm
alarm[5] = global.fspd*.3
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
    break
    
    case 2:
    legAnim[1] = 4
    legAnim[2] = 6
    skrtAnim = 1
    hipsThrust = 5
    bounce = 1
    alarm[5] = global.fspd*.1
    break
    
    case 3:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 4
    bounce = 0
    break
    
    case 4:
    legAnim[1] = 4
    legAnim[2] = 6
    hipsThrust = 1
    break
    
    case 5:
    startAnimation(0,animIdle)
    break
}
