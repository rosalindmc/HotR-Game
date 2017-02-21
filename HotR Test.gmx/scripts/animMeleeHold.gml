//Holding animation for melee weapons
//animMeleeHold(hand,animStep)

alarm[5+argument0] = global.fspd*.3
animStep[argument0] += 1

animPriority[argument0] = 0

switch(argument1)
{
case 0:
handHeight[argument0] = 4
handRot[argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-45)
handDist[argument0] = 6
handDir[argument0] =  300+(bodyHFacing*(2*(argument0-1.5))*75)
break

case 1:
handHeight[argument0] = 3
handRot[argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-45)
handDist[argument0] = 6
handDir[argument0] =  300+(bodyHFacing*(2*(argument0-1.5))*75)

alarm[5+argument0] = global.fspd*.05
break

case 2:
handHeight[argument0] = 4
handRot[argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-45)
handDist[argument0] = 5
handDir[argument0] =  300+(bodyHFacing*(2*(argument0-1.5))*75)

alarm[5+argument0] = global.fspd*(.3+random(2.7))
break

case 3:
//Loop Animation
animStep[argument0] = 0
animIndex[argument0] = animMeleeHold
break
}
