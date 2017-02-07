#define treeInsight
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_insight
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Insight'
tooltip = 'Increased detection range and increased damage to helpless foes' break
case 2: name = 'Improved Insight'
tooltip = 'Increased detection range and increased damage to helpless foes' break
case 3: name = 'Expert Insight'
tooltip = 'Increased detection range and increased damage to helpless foes' break
case 4: name = 'Master Insight'
tooltip = 'Increased detection range and increased damage to helpless foes' break
}
break

case 2:
if char.cunning >= 8
return true
else
return false
break
}

#define branchVigiliance
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Vigiliance'
tooltip = 'Larger front arc'
branch = treeInsight
break

case 2:
return true
break
}

#define branchPassArmour
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Pass Armour'
tooltip = 'Flanking attacks have a chance to ignore armour'
branch = treeInsight
break

case 2:
return true
break
}

#define branchHeightAdvantage
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Height Advantage'
tooltip = 'Increased damage to foes on a lower elevation'
branch = treeInsight
break

case 2:
return true
break
}
