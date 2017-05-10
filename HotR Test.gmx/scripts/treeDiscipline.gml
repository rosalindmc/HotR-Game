#define treeDiscipline
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: dmgMitigation += .10
sResist += .20 break
case 2: dmgMitigation += .15
sResist += .30 break
case 3: dmgMitigation += .20
sResist += .40 break
case 4: dmgMitigation += .25
sResist += .50 break
}
break

case 1:     //Tooltip and icon
sprite_index = ico_discipline
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Discipline'
tooltip = 'Gain 10% damage mitigation and 20% suppression resistance' break
case 2: name = 'Adept Discipline'
tooltip = 'Gain 15% damage mitigation and 30% suppression resistance' break
case 3: name = 'Expert Discipline'
tooltip = 'Gain 20% damage mitigation and 40% suppression resistance' break
case 4: name = 'Master Discipline'
tooltip = 'Gain 25% damage mitigation and 50% suppression resistance' break
}
ttLength = 3
break

case 2:
if char.will >= 8
return true
else
return false
break
}

#define branchBlockTraining
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
blockMax += 1
blockGen *= 1.25
blockStr = floor(blockStr*1.50)
break

case 1:     //Tooltip and icon
sprite_index = ico_blockTraining
image_index = 1
name = 'Block Training'
tooltip = '+1 Maximum Block, Block 50% more damage and 25% more frequently'
ttLength = 3
branch = treeDiscipline
break

case 2:
return true
break
}

#define branchConfidence
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
lifeMax += min(3,floor(armMax/4))
break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Confidence'
tooltip = 'Gain life equal to your armour value (Max 3)'
ttLength = 2
branch = treeDiscipline
break

case 2:
return true
break
}

#define branchShakeItOff
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onUpkeep[onUpkeepSize,0] = cancelDebuff
onUpkeep[onUpkeepSize,1] = 'Shake it Off'
onUpkeep[onUpkeepSize,2] = 20
onUpkeep[onUpkeepSize,3] = 5
onUpkeep[onUpkeepSize,4] = false
onUpkeep[onUpkeepSize,5] = false
onUpkeepSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_shakeItOff
image_index = 1
name = 'Shake it Off'
tooltip = '20% chance each second to reduce duration of debuffs applied to you by 5 seconds'
ttLength = 3
branch = treeDiscipline
break

case 2:
return true
break
}

#define branchArmourTraining
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
armMax += 2
enc /= 1.5
break

case 1:     //Tooltip and icon
sprite_index = ico_armourTraining
image_index = 1
name = 'Armour Training'
tooltip = 'Reduce armour encumberance by 33% and increase armour by 1/2'
ttLength = 3
branch = treeDiscipline
break

case 2:
return true
break
}

#define branchCounterAttack
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onBlock[onBlockSize,0] = fastAttack
onBlock[onBlockSize,1] = 'Counter Attack'
onBlock[onBlockSize,2] = 20
onBlock[onBlockSize,3] = 3
onBlock[onBlockSize,4] = false
onBlock[onBlockSize,5] = false
onBlockSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_counterAttack
image_index = 1
name = 'Counter Attack'
tooltip = 'Blocking has 20% chance to make your next turn come 3 seconds faster'
ttLength = 3
branch = treeDiscipline
break

case 2:
return true
break
}

#define branchHoldTheLine
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actHoldTheLine,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_holdTheLine
image_index = 1
name = 'Hold The Line'
tooltip = 'Active: Gain a block for each adjacent foe'
ttLength = 2
branch = treeDiscipline
break

case 2:
return true
break
}

#define branchGuardedAttack
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actGuardedAttack,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_guardedAttack
image_index = 1
name = 'Guarded Attack'
tooltip = 'Special Melee: Make a slow attack and gain a Block'
ttLength = 2
branch = treeDiscipline
break

case 2:
return true
break
}