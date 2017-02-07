#define treeSubterfuge
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_subterfuge
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Subterfuge'
tooltip = 'Gain the Hide ability and inflict +2 sneak attack damage' break
case 2: name = 'Improved Subterfuge'
tooltip = 'Gain the Hide ability and inflict +3 sneak attack damage' break
case 3: name = 'Expert Subterfuge'
tooltip = 'Gain the Hide ability and inflict +4 sneak attack damage' break
case 4: name = 'Master Subterfuge'
tooltip = 'Gain the Hide ability and inflict +5 sneak attack damage' break
}
break

case 2:
if char.cunning >= 8
return true
else
return false
break
}

#define branchShadowStep
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Shadow Step'
tooltip = 'Gain +2 Movement while stealthed'
branch = treeSubterfuge
break

case 2:
return true
break
}

#define branchIncognito
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Incognito'
tooltip = 'Whenever you gain stealth, a nearby unengaged ally also gains stealth'
branch = treeSubterfuge
break

case 2:
return true
break
}

#define branchAmbush
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Ambush'
tooltip = 'Attacking from stealth grants increased action speed and dodge chance for 5 seconds'
branch = treeSubterfuge
break

case 2:
return true
break
}
