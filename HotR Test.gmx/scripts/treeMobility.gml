#define treeMobility
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: movementBonus += 1.0 movStaminaMult *= .90 movHaste += .02 break
case 2: movementBonus += 1.5 movStaminaMult *= .85 movHaste += .03 break
case 3: movementBonus += 2.0 movStaminaMult *= .80 movHaste += .04 break
case 4: movementBonus += 2.5 movStaminaMult *= .75 movHaste += .05 break
}
break

case 1:     //Tooltip and icon
sprite_index = ico_mobility
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Mobility'
tooltip = 'Gain +1.0 sprint speed and sprinting costs less stamina' break
case 2: name = 'Adept Mobility'
tooltip = 'Gain +1.5 sprint speed and sprinting costs less stamina' break
case 3: name = 'Expert Mobility'
tooltip = 'Gain +2.0 sprint speed and sprinting costs less stamina' break
case 4: name = 'Master Mobility'
tooltip = 'Gain +2.5 sprint speed and sprinting costs less stamina' break
}
ttLength = 2
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
evasion = true

if bold = 1
{
    dodge += 15
}
break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Evasion'
tooltip = 'Gain +15% dodge chance while BOLD.  Do not lose BOLD when you dodge.'
ttLength = 3
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
onHit[onHitSize,2] = .1
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_lightningStrike
image_index = 1
name = 'Lightning Strike'
tooltip = 'Inflict increased melee damage to foes with lower dodge chance'
ttLength = 3
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
sprite_index = ico_marathon
image_index = 1
name = 'Marathon'
tooltip = '10% increased movement Rate. Reduce all stamina costs from moving by 80%'
ttLength = 3
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
onMove[onMoveSize,1] = 'Hard Target'
onMove[onMoveSize,2] = dodgeBuff
onMove[onMoveSize,3] = 10
onMove[onMoveSize,4] = 10
onMove[onMoveSize,5] = 5
onMoveSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_hardTarget
image_index = 1
name = 'Hard Target'
tooltip = 'Gain +10% dodge chance when moving'
ttLength = 2
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
sprite_index = ico_momentum
image_index = 1
name = 'Momentum'
tooltip = 'Gain +2.0 POW to melee attacks while BOLD'
ttLength = 2
branch = treeMobility
break

case 2:
return true
break
}

#define branchBurstOfSpeed
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actBurstOfSpeed,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_burstOfSpeed
image_index = 1
name = 'Burst of Speed'
tooltip = 'Active: Move very quickly'
ttLength = 1
branch = treeMobility
break

case 2:
return true
break
}

#define branchTumble
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actTumble,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_tumble
image_index = 1
name = 'Tumble'
tooltip = 'Active: Move and ignore ZoC'
ttLength = 2
branch = treeMobility
break

case 2:
return true
break
}