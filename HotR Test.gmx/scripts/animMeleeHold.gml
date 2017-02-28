#define animMeleeHold
//Holding animation for melee weapons
//animMeleeHold(hand,animStep)

alarm[5+argument0] = global.fspd*.3
animStep[argument0] += 1

animPriority[argument0] = 0

switch(argument1)
{
case 0:
handHeight[argument0] = 6
handRot[argument0] = facing+(bodyHFacing*45)
handDist[argument0] = 6
handDir[argument0] = facing+((argument0-1.5)*60)
break

case 1:
handHeight[argument0] = 4
handRot[argument0] = facing+(bodyHFacing*45)
handDist[argument0] = 6
handDir[argument0] =  facing+((argument0-1.5)*60)

alarm[5+argument0] = global.fspd*.05
break

case 2:
handHeight[argument0] = 5
handRot[argument0] = facing+(bodyHFacing*45)
handDist[argument0] = 6
handDir[argument0] =  facing+((argument0-1.5)*60)

alarm[5+argument0] = global.fspd*(.3+random(.7))
break

case 3:
//Loop Animation
animStep[argument0] = 0
animIndex[argument0] = script_execute(wepAnimType[argument0],0)
break
}

#define animShield
//Holding animation for melee weapons
//animMeleeHold(hand,animStep)

alarm[5+argument0] = global.fspd*.3
animStep[argument0] += 1

animPriority[argument0] = 1

switch(argument1)
{
case 0:
handHeight[argument0] = 4
handRot[argument0] = 90-(bodyHFacing*90)
handDist[argument0] = 6
handDir[argument0] = facing+((argument0-1.5)*60)
break

case 1:
handHeight[argument0] = 2
handRot[argument0] = 90-(bodyHFacing*90)
handDist[argument0] = 6
handDir[argument0] = facing+((argument0-1.5)*60)

alarm[5+argument0] = global.fspd*.05
break

case 2:
handHeight[argument0] = 3
handRot[argument0] = 90-(bodyHFacing*90)
handDist[argument0] = 6
handDir[argument0] = facing+((argument0-1.5)*60)


alarm[5+argument0] = global.fspd*(.3+random(.7))
break

case 3:
//Loop Animation
animStep[argument0] = 0
animIndex[argument0] = script_execute(wepAnimType[argument0],0)
break
}

#define animBlock
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
handRot[argument0] = 90-(bodyHFacing*90)
if hasShield = false
{handRot[argument0] = facing+(bodyHFacing*90)}
handDist[argument0] = 6
handDir[argument0] = facing+((argument0-1.5)*60)

if animPriority[3-argument0] = 0
{
    handHeight[3-argument0] = 4
    handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
    handDist[3-argument0] = 5
    handDir[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-30)
}

alarm[5+argument0] = global.fspd*.1
break

case 1:
handHeight[argument0] = 8
handRot[argument0] = 90-(bodyHFacing*45)
if hasShield = false
{handRot[argument0] = facing+(bodyHFacing*90)}
handDist[argument0] = 6
handDir[argument0] = facing+((argument0-1.5)*60)

if animPriority[3-argument0] = 0
{
    handHeight[3-argument0] = 4
    handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
    handDist[3-argument0] = 5
    handDir[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-30)
}

alarm[5+argument0] = global.fspd*.1
break

//Mid Swing
case 2:
handHeight[argument0] = 7
handRot[argument0] = 90-(bodyHFacing*45)
if hasShield = false
{handRot[argument0] = facing+(bodyHFacing*90)}
handDist[argument0] = 6
handDir[argument0] = facing+((argument0-1.5)*60)

if animPriority[3-argument0] = 0
{
    handHeight[3-argument0] = 4
    handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
    handDist[3-argument0] = 5
    handDir[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-30)
}

alarm[5+argument0] = global.fspd*.1
break

case 3:
handHeight[argument0] = 6
handRot[argument0] = 90-(bodyHFacing*90)
if hasShield = false
{handRot[argument0] = facing+(bodyHFacing*90)}
handDist[argument0] = 6
handDir[argument0] = facing+((argument0-1.5)*60)

if animPriority[3-argument0] = 0
{
    handHeight[3-argument0] = 4
    handRot[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*45)
    handDist[3-argument0] = 5
    handDir[3-argument0] = facing+(bodyHFacing*(2*(argument0-1.5))*-30)
}

alarm[5+argument0] = global.fspd*.1
break

case 4:
//End Animation
startAnimation(argument0,script_execute(wepAnimType[argument0],0))
break
}
