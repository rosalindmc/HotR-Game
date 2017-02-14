//Downward swing animation for melee weapons
//animDownSwing(hand,animStep)

alarm[5+argument0] = global.fspd*.1
animStep[argument0] += 1

animPriority[argument0] = 2

switch(argument1)
{
//Preparing
case 0:
handHeight[argument0] = 6
handRot[argument0] = facing+(bodyHFacing*45)
handDist[argument0] = 6
handDir[argument0] = facing+0

if animPriority[3-argument0] = 0
{
    handHeight[argument0] = 24
    handRot[argument0] = 120
    handDist[argument0] = 5
    handDir[argument0] = -30
}

alarm[5+argument0] = global.fspd*.2
break

case 1:
handHeight[argument0] = 8
handRot[argument0] = facing+(bodyHFacing*135)
handDist[argument0] = 4
handDir[argument0] = facing+0
alarm[5+argument0] = global.fspd*.2
break

//Mid Swing
case 2:
attackDamage(true)
handHeight[argument0] = 3
handRot[argument0] = facing+(bodyHFacing*30)
handDist[argument0] = 6
handDir[argument0] = facing+0

alarm[5+argument0] = global.fspd*.05
break

case 3:
handHeight[argument0] = 2
handRot[argument0] = facing+(bodyHFacing*-30)
handDist[argument0] = 5
handDir[argument0] = facing+0

alarm[5+argument0] = global.fspd*.3
break

case 4:
//End Animation
animStep[argument0] = 0
animIndex[argument0] = animMeleeHold
break
}
