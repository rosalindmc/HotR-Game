#define treeSurvival
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_survival
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Survival'
tooltip = 'Foraging and Hunting yield better results. +1.0 skill when fighting animals' break
case 2: name = 'Improved Survival'
tooltip = 'Foraging and Hunting yield better results. +1.5 skill when fighting animals' break
case 3: name = 'Expert Survival'
tooltip = 'Foraging and Hunting yield better results. +2.0 skill when fighting animals' break
case 4: name = 'Master Survival'
tooltip = 'Foraging and Hunting yield better results. +2.5 skill when fighting animals' break
}
break

case 2:
return true
break
}

#define script123
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

#define script124
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

#define script125
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