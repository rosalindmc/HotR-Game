#define treeDaring
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_daring
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Daring'
tooltip = 'Combat benefits when surrounded' break
case 2: name = 'Improved Daring'
tooltip = 'Combat benefits when surrounded' break
case 3: name = 'Expert Daring'
tooltip = 'Combat benefits when surrounded' break
case 4: name = 'Master Daring'
tooltip = 'Combat benefits when surrounded' break
}
break

case 2:
if char.fellowship >= 8
return true
else
return false
break
}

#define branchBravery
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Bravery'
tooltip = 'Gain additional damage while surrounded'
branch = treeDaring
break

case 2:
return true
break
}

#define branchAgainstTheOdds
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Against the Odds'
tooltip = 'Gain substantial dodge chance against large foes'
branch = treeDaring
break

case 2:
return true
break
}

#define branchFlourish
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Flourish'
tooltip = 'Melee attacks have achance to Daze all nearby foes other than the target'
branch = treeDaring
break

case 2:
return true
break
}