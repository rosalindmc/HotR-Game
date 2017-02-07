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
onHit[onHitSize,3] = 1
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
tooltip = 'Attacks have a 20% chance to inflict more damage and DAZE' break
case 2: name = 'Improved Strength'
tooltip = 'Attacks have a 30% chance to inflict more damage and DAZE' break
case 3: name = 'Expert Strength'
tooltip = 'Attacks have a 40% chance to inflict more damage and DAZE' break
case 4: name = 'Master Strength'
tooltip = 'Attacks have a 50% chance to inflict more damage and DAZE' break
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

break

case 1:     //Tooltip and icon
sprite_index = ico_breaker
image_index = 1
name = 'Breaker'
tooltip = 'MIGHTY attacks SUNDER 1'
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

break

case 1:     //Tooltip and icon
sprite_index = ico_breaker
image_index = 1
name = 'Crunch'
tooltip = 'MIGHTY attacks inflict bonus damage to lower Might characters'
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

break

case 1:     //Tooltip and icon
sprite_index = ico_breaker
image_index = 1
name = 'Smash'
tooltip = 'Attacks inflict bonus damage to high health foes (70%+)'
branch = treeStrength
break

case 2:
return true
break
}