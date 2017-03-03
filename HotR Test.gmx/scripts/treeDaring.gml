#define treeDaring
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
if foeAdj <= 1 and allyAdj = 0
{
    switch(argument1)
    {
    case 1: mSkill += 1.0 dodge += 4 break
    case 2: mSkill += 1.5 dodge += 6 break
    case 3: mSkill += 2.0 dodge += 8 break
    case 4: mSkill += 2.5 dodge += 10 break
    }
}
break

case 1:     //Tooltip and icon
sprite_index = ico_daring
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Daring'
tooltip = 'Gain +1.0 melee skill and +4 dodge when engaged with a single foe and no allies' break
case 2: name = 'Improved Daring'
tooltip = 'Gain +1.5 melee skill and +6 dodge when engaged with a single foe and no allies' break
case 3: name = 'Expert Daring'
tooltip = 'Gain +2.0 melee skill and +8 dodge when engaged with a single foe and no allies' break
case 4: name = 'Master Daring'
tooltip = 'Gain +2.5 melee skill and +10 dodge when engaged with a single foe and no allies' break
}
break

case 2:
if char.fellowship >= 8
return true
else
return false
break
}

#define branchFocus
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
if foeAdj <= 1 and allyAdj = 0
{
    atkHaste += .25
}
break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Focus'
tooltip = 'Gain 25% attack speed when engaged with a single foe and no allies'
branch = treeDaring
break

case 2:
return true
break
}

#define branchParry
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
if hasShield = false and wepClass[1] = melee
{
    blockStr += fellowship
    
    onHit[onHitSize,0] = wepsklGuard
    onHit[onHitSize,1] = 'Parry'
    onHit[onHitSize,2] = 10
    onHit[onHitSize,3] = false
    onHit[onHitSize,4] = 1
    onHit[onHitSize,5] = false
    onHitSize += 1
}
break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Parry'
tooltip = 'Add the parry skill to your mainhand weapon and add block strength equal to 1/4 fellowship while not wielding a shield'
branch = treeDaring
break

case 2:
return true
break
}

#define branchFlourish
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_bravery
image_index = 1
name = 'Flourish'
tooltip = 'Melee attacks have a chance to Daze all nearby foes other than the target'
branch = treeDaring
break

case 2:
return true
break
}