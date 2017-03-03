#define melee
//Melee control script
startAnimation(atkHand,script_execute(wepAnimType[atkHand],1))
startAnimation(0,animThrust)

//Stamina Cost
s = (3-(dualWield*.5))/((wepSpeed[atkHand]))
stm -= s*wepStamina[atkHand]*atkStaminaMult*.25

#define ranged
//Ranged attack Script
facing = round(point_direction(x,y,target.x,target.y)/45)*45
if abs(angle_difference(facing,90)) < 90
{vFacing = 1}
else
{vFacing = 0}

if abs(angle_difference(facing,0)) < 90
{hFacing = 1}
else
{hFacing = -1}

startAnimation(atkHand,script_execute(wepAnimType[atkHand],2))

//Stamina Cost
s = (3-(dualWield*.5))/((wepRSpeed[atkHand]))
stm -= s*wepRStamina[atkHand]*atkStaminaMult*.5