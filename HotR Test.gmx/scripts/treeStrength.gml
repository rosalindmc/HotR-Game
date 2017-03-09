#define treeStrength
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: onHit[onHitSize,2] = 20 break
case 2: onHit[onHitSize,2] = 30 break
case 3: onHit[onHitSize,2] = 40 break
case 4: onHit[onHitSize,2] = 50 break
}

onHit[onHitSize,0] = mighty
onHit[onHitSize,1] = 'Mighty'
onHit[onHitSize,3] = 2
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_strength
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Strength'
tooltip = 'Attacks have a 20% chance to be MIGHTY and inflict +2.0 POW and DAZE for 2 seconds' break
case 2: name = 'Improved Strength'
tooltip = 'Attacks have a 30% chance to be MIGHTY and inflict +2.0 POW and DAZE for 2 seconds' break
case 3: name = 'Expert Strength'
tooltip = 'Attacks have a 40% chance to be MIGHTY and inflict +2.0 POW and DAZE for 2 seconds' break
case 4: name = 'Master Strength'
tooltip = 'Attacks have a 50% chance to be MIGHTY and inflict +2.0 POW and DAZE for 2 seconds' break
}
break

case 2:
if char.might >= 8
return true
else
return false
break
}

#define branchBreaker
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
breaker = true
break

case 1:     //Tooltip and icon
sprite_index = ico_breaker
image_index = 1
name = 'Breaker'
tooltip = 'MIGHTY attacks SUNDER 1, slower weapons may SUNDER more'
branch = treeStrength
break

case 2:
return true
break
}

#define branchCrunch
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
crunch = true
break

case 1:     //Tooltip and icon
sprite_index = ico_crunch
image_index = 1
name = 'Crunch'
tooltip = 'MIGHTY attacks inflict +.2 POW to lower Might characters for each point of Might difference'
branch = treeStrength
break

case 2:
return true
break
}

#define branchSmash
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onHit[onHitSize,0] = healthFel
onHit[onHitSize,1] = 'Smash'
onHit[onHitSize,2] = 70
onHit[onHitSize,3] = 1.2
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_smash
image_index = 1
name = 'Smash'
tooltip = 'Attacks inflict +1.2 POW to high health foes (70%+)'
branch = treeStrength
break

case 2:
return true
break
}

#define branchReadyForMore
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onDown[onDownSize,0] = statusGain
onDown[onDownSize,1] = strengthBuff
onDown[onDownSize,2] = 100
onDown[onDownSize,3] = 2
onDown[onDownSize,4] = 10
onDown[onDownSize,5] = false
onDownSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_readyForMore
image_index = 1
name = 'Ready for More'
tooltip = 'Gain STRENGTH 2 on downing a foe'
branch = treeStrength
break

case 2:
return true
break
}
#define branchFeatOfStrength
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actFeatOfStrength,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_readyForMore
image_index = 1
name = 'Feat of Strength'
tooltip = 'Active: Gain EMPOWER 4 for 5 seconds'
branch = treeStrength
break

case 2:
return true
break
}

#define branchGrapple
//tree(how to use, rank)
switch(argument0)
{
case 3:     //Run when the unit is initialized in battle
addAbility(actGrapple,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_crunch
image_index = 1
name = 'Grapple'
tooltip = 'Active: IMMOBILIZE an adjacent foe'
branch = treeStrength
break

case 2:
return true
break
}

#define branchOverpower
//tree(how to use, rank)
switch(argument0)
{
case 3:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_readyForMore
image_index = 1
name = 'Overpower'
tooltip = 'Active: PUSH an adjacent target and destroy a block'
branch = treeStrength
break

case 2:
return true
break
}

#define branchSunderArmour
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities

break

case 1:     //Tooltip and icon
sprite_index = ico_readyForMore
image_index = 1
name = 'Sunder Armour'
tooltip = 'Special Attack: Inflict SUNDER'
branch = treeStrength
break

case 2:
return true
break
}