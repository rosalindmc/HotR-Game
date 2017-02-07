#define treeMobility
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: movementBonus += 1.0 break
case 2: movementBonus += 1.5 break
case 3: movementBonus += 2.0 break
case 4: movementBonus += 2.5 break
}
break

case 1:     //Tooltip and icon
sprite_index = ico_mobility
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Mobility'
tooltip = 'Gain +1.0 sprint speed and sprinting costs less stamina' break
case 2: name = 'Improved Mobility'
tooltip = 'Gain +1.5 sprint speed and sprinting costs less stamina' break
case 3: name = 'Expert Mobility'
tooltip = 'Gain +2.0 sprint speed and sprinting costs less stamina' break
case 4: name = 'Master Mobility'
tooltip = 'Gain +2.5 sprint speed and sprinting costs less stamina' break
}
break

case 2:
if char.grace >= 8
return true
else
return false
break
}

#define branchEvasion
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Evasion'
tooltip = 'Gain +15% dodge chance while BOLD.  Do not lose BOLD when you dodge.'
branch = treeMobility
break

case 2:
return true
break
}

#define branchLightningStrike
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Lightning Strike'
tooltip = 'Inflict increased damage to foes with lower dodge chance'
branch = treeMobility
break

case 2:
return true
break
}

#define branchMarathon
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_evasion
image_index = 1
name = 'Marathon'
tooltip = 'Reduce all stamina costs from moving by 80%'
branch = treeMobility
break

case 2:
return true
break
}