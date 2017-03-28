#define melee
//Melee control script
startAnimation(atkHand,script_execute(wepAnimType[atkHand],1))
startAnimation(0,animThrust)

//Stamina Cost
s = (3-(dualWield*.5))/((wepSpeed[atkHand]))
spendStamina(id,s*wepStamina[atkHand]*atkStaminaMult*.25)

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

if autoActive != false
{
    startAnimation(atkHand,animAutoFire)   
}
else
{
    shots[atkHand+dualWield+((invSwitch-1)*2)] -= 1
    if autoLoad = true and reloads[atkHand+dualWield+((invSwitch-1)*2)] > 0
    {
        shots[atkHand+dualWield+((invSwitch-1)*2)] = maxShots[atkHand+dualWield+((invSwitch-1)*2)]
        reloads[atkHand+dualWield+((invSwitch-1)*2)] -= 1
    }
    startAnimation(atkHand+dualWield,script_execute(wepAnimType[atkHand+dualWield],2))
}
//Stamina Cost
s = 3/((wepRSpeed[atkHand+dualWield]))
spendStamina(id,s*wepRStamina[atkHand+dualWield]*atkStaminaMult*.25)