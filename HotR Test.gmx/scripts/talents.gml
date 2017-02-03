#define talents
/*
talent[slot,talent]

talent[0,0] = treeTalent
talent[0,1] = branchTalent1
talent[0,2] = branchTalent2
talent[0,3] = branchTalent3
talent[0,4] = capstone/special
talent[0,5] = talentLevel

switch(argument0)
{
case 0: 
break
case 1: 
break
}

#define emptyTalent

#define emptyBranch

#define treeToughness
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_toughness
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Toughness'
tooltip = 'Gain +2 life and stamina' break
case 2: name = 'Improved Toughness'
tooltip = 'Gain +3 life and stamina' break
case 3: name = 'Expert Toughness'
tooltip = 'Gain +4 life and stamina' break
case 4: name = 'Master Toughness'
tooltip = 'Gain +5 life and stamina' break
}
break

case 2:
return true
break
}

#define treeMartial
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_martial
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Martial'
tooltip = 'Gain +1.0 Melee and Ranged Skill' break
case 2: name = 'Improved Martial'
tooltip = 'Gain +1.5 Melee and Ranged Skill' break
case 3: name = 'Expert Martial'
tooltip = 'Gain +2.0 Melee and Ranged Skill' break
case 4: name = 'Master Martial'
tooltip = 'Gain +2.5 Melee and Ranged Skill' break
}
break

case 2:
return true
break
}

#define treeMobility
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

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
return true
break
}

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
return true
break
}

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
return true
break
}

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
return true
break
}

#define treeDiscipline
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_discipline
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Discipline'
tooltip = 'Suffer 10% less damage and gain 20% suppression resistance' break
case 2: name = 'Improved Discipline'
tooltip = 'Suffer 15% less damage and gain 30% suppression resistance' break
case 3: name = 'Expert Discipline'
tooltip = 'Suffer 20% less damage and gain 40% suppression resistance' break
case 4: name = 'Master Discipline'
tooltip = 'Suffer 25% less damage and gain 50% suppression resistance' break
}
break

case 2:
return true
break
}

#define treeLeadership
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_leadership
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Leadership'
tooltip = 'Increased life and stamina regeneration to all nearby allies' break
case 2: name = 'Improved Leadership'
tooltip = 'Increased life and stamina regeneration to all nearby allies' break
case 3: name = 'Expert Leadership'
tooltip = 'Increased life and stamina regeneration to all nearby allies' break
case 4: name = 'Master Leadership'
tooltip = 'Increased life and stamina regeneration to all nearby allies' break
}
break

case 2:
return true
break
}

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
return true
break
}