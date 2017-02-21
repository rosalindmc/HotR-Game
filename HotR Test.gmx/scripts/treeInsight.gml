#define treeInsight
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: onHit[onHitSize,2] = .6 break
case 2: onHit[onHitSize,2] = .9 break
case 3: onHit[onHitSize,2] = 1.2 break
case 4: onHit[onHitSize,2] = 1.5 break
}

onHit[onHitSize,0] = advantageFel
onHit[onHitSize,1] = 'Insight'
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_insight
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Insight'
tooltip = 'Increased detection range and +.6 POW on backstab and against helpless foes' break
case 2: name = 'Improved Insight'
tooltip = 'Increased detection range and +.9 POW on backstab and against helpless foes' break
case 3: name = 'Expert Insight'
tooltip = 'Increased detection range and +1.2 POW on backstab and against helpless foes' break
case 4: name = 'Master Insight'
tooltip = 'Increased detection range and +1.5 POW on backstab and against helpless foes' break
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
arc = 140
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
onHit[onHitSize,0] = advantageArmourPass
onHit[onHitSize,1] = 'Armour Pass'
onHit[onHitSize,2] = 50
onHit[onHitSize,3] = 1
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
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
onHit[onHitSize,0] = heightFel
onHit[onHitSize,1] = 'Height Advantage'
onHit[onHitSize,2] = .7
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_subtlety
image_index = 1
name = 'Height Advantage'
tooltip = '+.7 POW against foes at a lower elevation'
branch = treeInsight
break

case 2:
return true
break
}
