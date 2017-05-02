#define treeDueling
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
sprite_index = ico_dueling
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Novice Dueling'
tooltip = 'Gain +1.0 melee skill and +4 dodge when engaged with a single foe and no allies' break
case 2: name = 'Adept Dueling'
tooltip = 'Gain +1.5 melee skill and +6 dodge when engaged with a single foe and no allies' break
case 3: name = 'Expert Dueling'
tooltip = 'Gain +2.0 melee skill and +8 dodge when engaged with a single foe and no allies' break
case 4: name = 'Master Dueling'
tooltip = 'Gain +2.5 melee skill and +10 dodge when engaged with a single foe and no allies' break
}
ttLength = 3
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
sprite_index = ico_focus
image_index = 1
name = 'Focus'
tooltip = 'Gain 25% attack speed when engaged with a single foe and no allies'
ttLength = 3
branch = treeDueling
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
sprite_index = ico_parry
image_index = 1
name = 'Parry'
tooltip = 'Add the parry skill to your mainhand weapon and add block strength equal to 1/4 fellowship while not wielding a shield'
ttLength = 5
branch = treeDueling
break

case 2:
return true
break
}

#define branchRiposte
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
areHit[areHitSize,0] = statusGain
areHit[areHitSize,1] = 'Riposte'
areHit[areHitSize,2] = celerity
areHit[areHitSize,3] = 50
areHit[areHitSize,4] = 2
areHit[areHitSize,5] = 5
areHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_riposte
image_index = 1
name = 'Riposte'
tooltip = 'Gain CELERITY when attacked'
ttLength = 2
branch = treeDueling
break

case 2:
return true
break
}

#define branchFlourish
//tree(how to use, rank)
switch(argument0)
{
case 3:     //Run when the unit is initialized in battle
addAbility(actFlourish,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_flourish
image_index = 1
name = 'Flourish'
tooltip = 'Special Melee: Attack dazes all adjacent foes other than the target'
ttLength = 3
branch = treeDueling
break

case 2:
return true
break
}

#define branchHeroicStrike
//tree(how to use, rank)
switch(argument0)
{
case 3:     //Run when the unit is initialized in battle
addAbility(actHeroicStrike,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_heroicStrike
image_index = 1
name = 'Heroic Strike'
tooltip = 'Special Melee: Attack gains a bonus to skill from fellowship'
ttLength = 3
branch = treeDueling
break

case 2:
return true
break
}

#define branchFootwork
//tree(how to use, rank)
switch(argument0)
{
case 3:     //Run when the unit is initialized in battle
addAbility(actFootwork,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_footwork
image_index = 1
name = 'Footwork'
tooltip = 'Action: Move and gain Skill'
ttLength = 1
branch = treeDueling
break

case 2:
return true
break
}

#define branchChallenge
//tree(how to use, rank)
switch(argument0)
{
case 3:     //Run when the unit is initialized in battle
addAbility(actChallenge,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_challenge
image_index = 1
name = 'Challenge'
tooltip = 'Action: Force an adjacent foe to melee attack you on their next turn'
ttLength = 3
branch = treeDueling
break

case 2:
return true
break
}
