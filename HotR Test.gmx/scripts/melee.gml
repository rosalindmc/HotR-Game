#define melee
//Melee control script
startAnimation(atkHand,script_execute(wepAnimType[atkHand],1))
startAnimation(0,animThrust)

//Stamina Cost
s = (3-(dualWield*.5))/((wepSpeed[atkHand]))
stm -= s*wepStamina[atkHand]*atkStaminaMult

#define ranged
//Ranged attack Script

//Fire Projectile (Temp, later anim will handle)
fireProjectile(wepRProjectile[atkHand],wepRProjSpeed[atkHand])

//Stamina Cost
s = (3-(dualWield*.5))/((wepRSpeed[atkHand]))
stm -= s*wepRStamina[atkHand]*atkStaminaMult