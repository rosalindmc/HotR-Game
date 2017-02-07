#define treeAlchemy
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_alchemy
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Alchemy'
tooltip = 'Craft and modify potions, poisons and bombs' break
case 2: name = 'Improved Alchemy'
tooltip = 'Craft and modify potions, poisons and bombs' break
case 3: name = 'Expert Alchemy'
tooltip = 'Craft and modify potions, poisons and bombs' break
case 4: name = 'Master Alchemy'
tooltip = 'Craft and modify potions, poisons and bombs' break
}
break

case 2:
return true
break
}

#define script130
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

#define script131
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

#define script132
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