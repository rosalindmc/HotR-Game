#define treeMedicine
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_medicine
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Medicine'
tooltip = 'Increase the party healing rate by 40% and gain Surgeons Tools proficiency' break
case 2: name = 'Adept Medicine'
tooltip = 'Increase the party healing rate by 60%. Patch Up, Cure and Revive 50% faster' break
case 3: name = 'Expert Medicine'
tooltip = 'Increase the party healing rate by 80%. Patch Up, Cure and Revive 100% faster' break
case 4: name = 'Master Medicine'
tooltip = 'Increase the party healing rate by 100%. Patch Up, Cure and Revive 150% faster' break
}
ttLength = 3
break

case 2:
return true
break
}

#define script117
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

#define script118
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

#define script119
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