#define treeMobility
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: movementBonus += 1.0 movStaminaMult *= .90 break
case 2: movementBonus += 1.5 movStaminaMult *= .85 break
case 3: movementBonus += 2.0 movStaminaMult *= .80 break
case 4: movementBonus += 2.5 movStaminaMult *= .75 break
}
break

case 1:     //Tooltip and icon
sprite_index = ico_mobility
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Mobility'
tooltip = 'Gain +1.0 sprint speed and sprinting costs less stamina' break
case 2: name = 'Improved Mobility'
tooltip = 'Gain +1.5 sprint speed and sprinting costs less stamina' break
case 3: name = 'Expert Mobility'
tooltip = 'Gain +2.0 sprint speed and sprinting costs less stamina' break
case 4: name = 'Master Mobility'
tooltip = 'Gain +2.5 sprint speed and sprinting costs less stamina' break
}
break

case 2:
if char.grace >= 8
return true
else
return false
break
}

#define branchEvasion
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
areAttacked[areAttackedSize,0] = boldDodge
areAttacked[areAttackedSize,1] = 15
areAttacked[areAttackedSize,2] = false
areAttacked[areAttackedSize,3] = false
areAttacked[areAttackedSize,4] = false
areAttacked[areAttackedSize,5] = false
areAttackedSize += 1
evasion = true
break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Evasion'
tooltip = 'Gain +15% dodge chance while BOLD.  Do not lose BOLD when you dodge.'
branch = treeMobility
break

case 2:
return true
break
}

#define branchLightningStrike
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onHit[onHitSize,0] = lightningStrike
onHit[onHitSize,1] = 'Lightning Strike'
onHit[onHitSize,2] = .2
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Lightning Strike'
tooltip = 'Inflict increased damage to foes with lower dodge chance'
branch = treeMobility
break

case 2:
return true
break
}

#define branchMarathon
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
movHaste = 0.1
movStaminaMult *= .20
break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Marathon'
tooltip = '10% increased movement Rate. Reduce all stamina costs from moving by 80%'
branch = treeMobility
break

case 2:
return true
break
}

#define branchHardTarget
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onMove[onMoveSize,0] = statusGain
onMove[onMoveSize,1] = dodgeBuff
onMove[onMoveSize,2] = 10
onMove[onMoveSize,3] = false
onMove[onMoveSize,4] = false
onMove[onMoveSize,5] = false
onMoveSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Hard Target'
tooltip = 'Gain +10% dodge chance when moving'
branch = treeMobility
break

case 2:
return true
break
}

#define branchMomentum
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onHit[onHitSize,0] = boldDamage
onHit[onHitSize,1] = 'Momentum'
onHit[onHitSize,2] = 2
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Momentum'
tooltip = 'Inflict +2.0 DPS while BOLD'
branch = treeMobility
break

case 2:
return true
break
}