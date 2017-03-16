#define treeSubterfuge
//tree(how to use, rank)
switch(argument0)
{
case 3:     //Run when the unit is initialized in battle
addAbility(actHide,2)
switch(argument1)
{
case 1: sneakDamage = 2 break
case 2: sneakDamage = 3 break
case 3: sneakDamage = 4 break
case 4: sneakDamage = 5 break
}
break

case 1:     //Tooltip and icon
sprite_index = ico_subterfuge
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Subterfuge'
tooltip = 'Gain the Hide ability and inflict +2 sneak attack damage' break
case 2: name = 'Adept Subterfuge'
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
sneakMove = 1.25
break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Shadow Step'
tooltip = 'Gain +25% Movement while STEALTHED'
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
sneakIncognito = true
break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Incognito'
tooltip = 'Whenever you gain STEALTH, a nearby unengaged ally also gains STEALTH'
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
sneakAmbush = true
break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Ambush'
tooltip = 'Attacking from STEALTH grants CELERITY for 5 seconds'
branch = treeSubterfuge
break

case 2:
return true
break
}

#define branchFightDirty


#define branchVanish

#define branchDebilitate

#define branchShadowStrike
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onDown[onDownSize,0] = statusGain
onDown[onDownSize,1] = stealth
onDown[onDownSize,2] = 100
onDown[onDownSize,3] = 1
onDown[onDownSize,4] = 5
onDown[onDownSize,5] = false
onDownSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Shadow Strike'
tooltip = 'Gain STEALTH on downing a foe'
branch = treeSubterfuge
break

case 2:
return true
break
}
