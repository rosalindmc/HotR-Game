#define treeStreetwise
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_streetwise
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Streetwise'
tooltip = 'City actions are safer. 10% better haggling' break
case 2: name = 'Adept Streetwise'
tooltip = 'City actions are safer. 15% better haggling' break
case 3: name = 'Expert Streetwise'
tooltip = 'City actions are safer. 20% better haggling' break
case 4: name = 'Master Streetwise'
tooltip = 'City actions are safer. 25% better haggling' break
}
ttLength = 2
break

case 2:
return true
break
}

#define script126
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

#define script127
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

#define script128
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