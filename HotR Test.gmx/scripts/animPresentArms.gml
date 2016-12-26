//Holding animation for melee weapons
//animMeleeHold(hand,animStep)

alarm[5+argument0] = global.fspd*.3
animStep[argument0] += 1

animPriority[argument0] = 0

switch(argument1)
{
case 0:
handHeight[argument0] = 4
handRot[argument0] = 90+(bodyHFacing*-45*(2*(argument0-1.5)))
handDist[argument0] = 4
handDir[argument0] = 300+(bodyHFacing*(2*(argument0-1.5))*75)
break

case 1:
//Loop Animation
animStep[argument0] = 0
animIndex[argument0] = animPresentArms
break
}
