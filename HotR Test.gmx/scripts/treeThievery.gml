#define treeThievery
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_thievery
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Thievery'
tooltip = 'Gain the Pilfer ability and Thieves Tools proficiency' break
case 2: name = 'Improved Thievery'
tooltip = 'Pilfer, Picklock, and Disarm Traps 50% faster' break
case 3: name = 'Expert Thievery'
tooltip = 'Pilfer, Picklock, and Disarm Traps 100% faster' break
case 4: name = 'Master Thievery'
tooltip = 'Pilfer, Picklock, and Disarm Traps 150% faster' break
}
break

case 2:
return true
break
}

#define script113
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

#define script114
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

#define script115
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