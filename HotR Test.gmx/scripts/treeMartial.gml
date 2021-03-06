#define treeMartial
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: mSkill += 1.0
rSkill += 1.0 break
case 2: mSkill += 1.5
rSkill += 1.5 break
case 3: mSkill += 2.0
rSkill += 2.0 break
case 4: mSkill += 2.5
rSkill += 2.5 break
}
break

case 1:     //Tooltip and icon
sprite_index = ico_martial
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Martial'
tooltip = 'Gain +1.0 Melee and Ranged Skill' break
case 2: name = 'Adept Martial'
tooltip = 'Gain +1.5 Melee and Ranged Skill' break
case 3: name = 'Expert Martial'
tooltip = 'Gain +2.0 Melee and Ranged Skill' break
case 4: name = 'Master Martial'
tooltip = 'Gain +2.5 Melee and Ranged Skill' break
}
ttLength = 2
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
aim += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_accuracy
image_index = 1
name = 'Accuracy'
tooltip = 'Increase range weapon accuracy sharply'
ttLength = 2
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
atkStaminaMult *= .80
atkHaste += .10
break

case 1:     //Tooltip and icon
sprite_index = ico_combatDrill
image_index = 1
name = 'Combat Drill'
tooltip = '10% Increased attack rate and 20% reduced stamina cost on all attacks'
ttLength = 3
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
onHit[onHitSize,0] = healthFel
onHit[onHitSize,1] = 'Slayer'
onHit[onHitSize,2] = 50
onHit[onHitSize,3] = 1.5
onHit[onHitSize,4] = true
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_slayer
image_index = 1
name = 'Slayer'
tooltip = '+1.5 POW against foes with less than 50% life'
ttLength = 2
branch = treeMartial
break

case 2:
return true
break
}

#define branchOpportunist
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onHit[onHitSize,0] = disableFel
onHit[onHitSize,1] = 'Opportunist'
onHit[onHitSize,2] = 1.0
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_opportunist
image_index = 1
name = 'Opportunist'
tooltip = '+1.0 POW against foes who are STUNNED, CRIPPLED, IMMOBILIZED, SLOWED, DAZED or BLINDED'
ttLength = 4
branch = treeMartial
break

case 2:
return true
break
}

#define branchMastery
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onHit[onHitSize,0] = masteryStrike
onHit[onHitSize,1] = 'Mastery'
onHit[onHitSize,2] = .4
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_mastery
image_index = 1
name = 'Mastery'
tooltip = '+POW against foes with lower Skill'
ttLength = 2
branch = treeMartial
break

case 2:
return true
break
}

#define branchGuardBreak
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actGuardBreak,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_guardBreak
image_index = 1
name = 'Guard Break'
tooltip = 'Special Melee: Destroy all blocks but deal reduced damage'
ttLength = 3
branch = treeMartial
break

case 2:
return true
break
}

#define branchSlow
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actSlow,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_slow
image_index = 1
name = 'Slow'
tooltip = 'Special Attack: Slow the target'
ttLength = 2
branch = treeMartial
break

case 2:
return true
break
}