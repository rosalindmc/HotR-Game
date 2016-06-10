//Downward swing animation for melee weapons
//anim_downSwing(hand,animStep)

alarm[5+argument0] = global.fspd*.1
animStep[argument0] += 1

animPriority[argument0] = 2

switch(argument1)
{
//Preparing
case 0:
handHeight[argument0] = 24
handRot[argument0] = 120
handDist[argument0] = 5
handDir[argument0] = -30

if animPriority[3-argument0] = 0
{
    handHeight[argument0] = 24
    handRot[argument0] = 120
    handDist[argument0] = 5
    handDir[argument0] = -30
}

alarm[5+argument0] = global.fspd*.5
break

//Mid Swing
case 1:
handHeight[argument0] = 16
handRot[argument0] = 45
handDist[argument0] = 7
handDir[argument0] = -15

alarm[5+argument0] = global.fspd*.05
break

//Hit
case 2:
handHeight[argument0] = 14
handRot[argument0] = -15
handDist[argument0] = 8
handDir[argument0] = 0

alarm[5+argument0] = global.fspd*.3
break

case 3:
//End Animation
animStep[argument0] = 0
animIndex[argument0] = anim_meleeHold
break
}
