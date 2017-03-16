#define treeDiplomacy
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_diplomacy
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Diplomacy'
tooltip = 'Gain the Inspire ability.' break
case 2: name = 'Adept Diplomacy'
tooltip = 'Inspire is 10% stronger.' break
case 3: name = 'Expert Diplomacy'
tooltip = 'Inspire is 20% stronger.' break
case 4: name = 'Master Diplomacy'
tooltip = 'Inspire is 30% stronger.' break
}
break

case 2:
return true
break
}

#define script120
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

#define script121
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

#define script122
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