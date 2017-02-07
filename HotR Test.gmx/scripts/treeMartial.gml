#define treeMartial
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_martial
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Martial'
tooltip = 'Gain +1.0 Melee and Ranged Skill' break
case 2: name = 'Improved Martial'
tooltip = 'Gain +1.5 Melee and Ranged Skill' break
case 3: name = 'Expert Martial'
tooltip = 'Gain +2.0 Melee and Ranged Skill' break
case 4: name = 'Master Martial'
tooltip = 'Gain +2.5 Melee and Ranged Skill' break
}
break

case 2:
if char.grace >= 8
return true
else
return false
break
}

#define branchAccuracy
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Accuracy'
tooltip = 'Increase range weapon accuracy sharply'
branch = treeMartial
break

case 2:
return true
break
}

#define branchCombatDrill
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Combat Drill'
tooltip = '10% Increased attack rate and 20% reduced stamina cost on all attacks'
branch = treeMartial
break

case 2:
return true
break
}

#define branchSlayer
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Slayer'
tooltip = '+2 DPS against foes with less than 50% life'
branch = treeMartial
break

case 2:
return true
break
}
