#define treeInsight
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: onHit[onHitSize,2] = 1.0 break
case 2: onHit[onHitSize,2] = 1.5 break
case 3: onHit[onHitSize,2] = 2.0 break
case 4: onHit[onHitSize,2] = 2.5 break
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
tooltip = 'Increased detection range and +1.0 POW on backstab and against helpless foes' break
case 2: name = 'Improved Insight'
tooltip = 'Increased detection range and +1.5 POW on backstab and against helpless foes' break
case 3: name = 'Expert Insight'
tooltip = 'Increased detection range and +2.0 POW on backstab and against helpless foes' break
case 4: name = 'Master Insight'
tooltip = 'Increased detection range and +2.5 POW on backstab and against helpless foes' break
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
sprite_index = ico_vigiliance
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
onHit[onHitSize,1] = 'Pass Armour'
onHit[onHitSize,2] = 50
onHit[onHitSize,3] = 1
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_passArmour
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
onHit[onHitSize,2] = 1.0
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_heightAdvantage
image_index = 1
name = 'Height Advantage'
tooltip = '+1.0 POW against foes at a lower elevation'
branch = treeInsight
break

case 2:
return true
break
}
#define branchAssessSituation
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actAssessSituation,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_assessSituation
image_index = 1
name = 'Assess Situation'
tooltip = 'Active: Gain a Block and increased detection range and front arc'
branch = treeInsight
break

case 2:
return true
break
}

#define branchPreciseStrike
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actPreciseStrike,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_preciseStrike
image_index = 1
name = 'Precise Strike'
tooltip = 'Special Attack: Make an attack with bonus POW and PEN based on cunning'
branch = treeInsight
break

case 2:
return true
break
}

#define branchSpotWeakness
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actSpotWeakness,-4)
addAbility(actExploitWeakness,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_spotWeakness
image_index = 1
name = 'Spot Weakness'
tooltip = 'Active: Mark a target, reducing their armour and allowing you to make a powerful attack'
branch = treeInsight
break

case 2:
return true
break
}

#define branchSap
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actSap,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_sap
image_index = 1
name = 'Sap'
tooltip = 'Active: Stun an adjacent foe, only usable while not in melee threat'
branch = treeInsight
break

case 2:
return true
break
}
