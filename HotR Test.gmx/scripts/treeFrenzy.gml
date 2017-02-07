#define treeFrenzy
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_frenzy
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Frenzy'
tooltip = 'Frenzy to gain combat advantages' break
case 2: name = 'Improved Frenzy'
tooltip = 'Frenzy to gain combat advantages' break
case 3: name = 'Expert Frenzy'
tooltip = 'Frenzy to gain combat advantages' break
case 4: name = 'Master Frenzy'
tooltip = 'Frenzy to gain combat advantages' break
}
break

case 2:
if char.will >= 8
return true
else
return false
break
}

#define branchWrath
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Wrath'
tooltip = 'Suffering damage reduces the cooldown of Frenzy'
branch = treeFrenzy
break

case 2:
return true
break
}

#define branchBloodlust
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Bloodlust'
tooltip = 'Gain life on attacks while frenzied'
branch = treeFrenzy
break

case 2:
return true
break
}

#define branchUnstoppable
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Unstoppable'
tooltip = 'While frenzied, debilitating status effects reduce the duraton of frenzy instead of being applied'
branch = treeFrenzy
break

case 2:
return true
break
}