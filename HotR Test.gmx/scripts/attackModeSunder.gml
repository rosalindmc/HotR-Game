#define attackModeSunder
switch(argument0)
{
case 0:     //Stats
icon = ico_sunderArmour
upkp = 60.0
name = 'Sunder Armour'
type = 'Attack'
buff = true
showDuration = false
tooltip = ''
break

case 1:     //Stats
owner.onWound[owner.onWoundSize,0] = tacSunderArm
owner.onWound[owner.onWoundSize,1] = 'Sunder Armour'
owner.onWound[owner.onWoundSize,2] = potency
owner.onWound[owner.onWoundSize,3] = false
owner.onWound[owner.onWoundSize,4] = false
owner.onWound[owner.onWoundSize,5] = false
owner.onWoundSize += 1
break

case 2:     //Upkeep

break

case 3:     //Stacking
break
}

#define attackModeGuardBreak
switch(argument0)
{
case 0:     //Stats
icon = ico_guardBreak
upkp = 60.0
name = 'Guard Break'
type = 'Attack'
buff = true
showDuration = false
tooltip = ''
break

case 1:     //Stats
owner.onAttack[owner.onAttackSize,0] = tacGuardBreak
owner.onAttack[owner.onAttackSize,1] = 'Guard Break'
owner.onAttack[owner.onAttackSize,2] = potency
owner.onAttack[owner.onAttackSize,3] = false
owner.onAttack[owner.onAttackSize,4] = false
owner.onAttack[owner.onAttackSize,5] = false
owner.onAttackSize += 1
break

case 2:     //Upkeep

break

case 3:     //Stacking
break
}

#define attackModeSlow
switch(argument0)
{
case 0:     //Stats
icon = ico_slow
upkp = 60.0
name = 'Slow'
type = 'Attack'
buff = true
showDuration = false
tooltip = ''
break

case 1:     //Stats
owner.onWound[owner.onWoundSize,0] = tacSlow
owner.onWound[owner.onWoundSize,1] = 'Slow'
owner.onWound[owner.onWoundSize,2] = potency
owner.onWound[owner.onWoundSize,3] = false
owner.onWound[owner.onWoundSize,4] = false
owner.onWound[owner.onWoundSize,5] = false
owner.onWoundSize += 1
break

case 2:     //Upkeep

break

case 3:     //Stacking
break
}

#define attackModePreciseStrike
switch(argument0)
{
case 0:     //Stats
icon = ico_preciseStrike
upkp = 60.0
name = 'Precise Strike'
type = 'Attack'
buff = true
showDuration = false
tooltip = ''
break

case 1:     //Stats
owner.onAttack[owner.onAttackSize,0] = tacPreciseStrike
owner.onAttack[owner.onAttackSize,1] = 'Precise Strike'
owner.onAttack[owner.onAttackSize,2] = potency
owner.onAttack[owner.onAttackSize,3] = false
owner.onAttack[owner.onAttackSize,4] = false
owner.onAttack[owner.onAttackSize,5] = false
owner.onAttackSize += 1
break

case 2:     //Upkeep

break

case 3:     //Stacking
break
}

#define attackModeExploitWeakness
switch(argument0)
{
case 0:     //Stats
icon = ico_exploitWeakness
upkp = 60.0
name = 'Exploit Weakness'
type = 'Attack'
buff = true
showDuration = false
tooltip = ''
break

case 1:     //Stats
owner.onAttack[owner.onAttackSize,0] = tacExploitWeakness
owner.onAttack[owner.onAttackSize,1] = 'Exploit Weakness'
owner.onAttack[owner.onAttackSize,2] = potency
owner.onAttack[owner.onAttackSize,3] = false
owner.onAttack[owner.onAttackSize,4] = false
owner.onAttack[owner.onAttackSize,5] = false
owner.onAttackSize += 1
break

case 2:     //Upkeep

break

case 3:     //Stacking
break
}

#define attackModeGuardedAttack
switch(argument0)
{
case 0:     //Stats
icon = ico_guardedAttack
upkp = 60.0
name = 'Guarded Attack'
type = 'Attack'
buff = true
showDuration = false
tooltip = ''
break

case 1:     //Stats
owner.atkHaste -= .2
owner.onAttack[owner.onAttackSize,0] = tacGuardedAttack
owner.onAttack[owner.onAttackSize,1] = 'Guarded Attack'
owner.onAttack[owner.onAttackSize,2] = potency
owner.onAttack[owner.onAttackSize,3] = false
owner.onAttack[owner.onAttackSize,4] = false
owner.onAttack[owner.onAttackSize,5] = false
owner.onAttackSize += 1
break

case 2:     //Upkeep

break

case 3:     //Stacking
break
}