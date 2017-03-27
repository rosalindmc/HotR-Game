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
handRot[argument0] = facing
handDist[argument0] = 6
handDir[argument0] = facing

handHeight[3-argument0] = 4
handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
handDist[3-argument0] = 5
handDir[3-argument0] = 90-(bodyHFacing*45)

alarm[5+argument0] = global.fspd*.2
break

case 1:
handHeight[argument0] = 8
handRot[argument0] = facing
handDist[argument0] = 7
handDir[argument0] = facing

handHeight[3-argument0] = 4
handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
handDist[3-argument0] = 5
handDir[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-30)

alarm[5+argument0] = global.fspd*.2
break

//Shoot
case 2:
if instance_exists(target)
{fireProjectile(wepRProjectile[atkHand],wepRProjSpeed[atkHand],wepRProjSprite[atkHand])}
handHeight[argument0] = 8
handRot[argument0] = facing
handDist[argument0] = 8
handDir[argument0] = facing

handHeight[3-argument0] = 4
handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
handDist[3-argument0] = 5
handDir[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-30)

alarm[5+argument0] = global.fspd*.05
break

case 3:
handHeight[argument0] = 6
handRot[argument0] = facing+(bodyHFacing*-30)
handDist[argument0] = 6
handDir[argument0] = facing

handHeight[3-argument0] = 4
handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
handDist[3-argument0] = 5
handDir[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-30)

alarm[5+argument0] = global.fspd*.3
break

case 4:
//End Animation
startAnimation(argument0,script_execute(wepAnimType[argument0],0))
break
}
