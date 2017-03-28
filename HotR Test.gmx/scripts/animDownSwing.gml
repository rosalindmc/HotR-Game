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
    handHeight[3-argument0] = 4
    handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
    handDist[3-argument0] = 5
    handDir[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-30)
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
if instance_exists(target)
{attackDamage(true)}
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
handSwitch()
startAnimation(argument0,script_execute(wepAnimType[argument0],0))
break
}
