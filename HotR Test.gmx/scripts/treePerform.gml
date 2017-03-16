#define treePerform
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_perform
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Perform'
tooltip = 'Gain the Perform camp ability' break
case 2: name = 'Adept Perform'
tooltip = 'Improve the Perform camp ability' break
case 3: name = 'Expert Perform'
tooltip = 'Futher Improve the Perform camp ability' break
case 4: name = 'Master Perform'
tooltip = 'Master the Perform camp ability' break
}
break

case 2:
return true
break
}

#define script136
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

#define script137
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

#define script138
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