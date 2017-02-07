#define treeLeadership
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_leadership
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Leadership'
tooltip = 'Increased life and stamina regeneration to all nearby allies' break
case 2: name = 'Improved Leadership'
tooltip = 'Increased life and stamina regeneration to all nearby allies' break
case 3: name = 'Expert Leadership'
tooltip = 'Increased life and stamina regeneration to all nearby allies' break
case 4: name = 'Master Leadership'
tooltip = 'Increased life and stamina regeneration to all nearby allies' break
}
break

case 2:
if char.fellowship >= 8
return true
else
return false
break
}

#define branchLeadByExample
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Lead By Example'
tooltip = 'Attacking restores allies life and stamina'
branch = treeLeadership
break

case 2:
return true
break
}

#define branchRally
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Rally'
tooltip = 'Gain the Rally Ability'
branch = treeLeadership
break

case 2:
return true
break
}

#define branchUnity
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Unity'
tooltip = 'Nearby allies gain resistance for each nearby ally'
branch = treeLeadership
break

case 2:
return true
break
}