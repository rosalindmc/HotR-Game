#define attackModeSunder
switch(argument0)
{
case 0:     //Stats
icon = ico_smash
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
icon = ico_accuracy
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
icon = ico_slayer
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