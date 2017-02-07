#define treeDiscipline
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_discipline
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Discipline'
tooltip = 'Suffer 10% less damage and gain 20% suppression resistance' break
case 2: name = 'Improved Discipline'
tooltip = 'Suffer 15% less damage and gain 30% suppression resistance' break
case 3: name = 'Expert Discipline'
tooltip = 'Suffer 20% less damage and gain 40% suppression resistance' break
case 4: name = 'Master Discipline'
tooltip = 'Suffer 25% less damage and gain 50% suppression resistance' break
}
break

case 2:
if char.will >= 8
return true
else
return false
break
}

#define branchBlockTraining
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Block Training'
tooltip = 'Block 50% more damage and 25% more frequently'
branch = treeDiscipline
break

case 2:
return true
break
}

#define branchConfidence
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Confidence'
tooltip = 'Gain maximum life equal to your armour value'
branch = treeDiscipline
break

case 2:
return true
break
}

#define branchShakeItOff
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Shake it Off'
tooltip = '20% chance each second to reduce duration of debuffs applied to you by 5 seconds'
branch = treeDiscipline
break

case 2:
return true
break
}