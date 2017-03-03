#define treeValour
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1:
sResist += .20*(max(0,foeAdj-1)) 
lifeRegen += 1.0*(max(0,foeAdj-1))
stmRegen += 1.0*(max(0,foeAdj-1))
break
case 2:
sResist += .30*(max(0,foeAdj-1)) 
lifeRegen += 1.5*(max(0,foeAdj-1))
stmRegen += 1.5*(max(0,foeAdj-1))
break
case 3:
sResist += .40*(max(0,foeAdj-1)) 
lifeRegen += 2.0*(max(0,foeAdj-1))
stmRegen += 2.0*(max(0,foeAdj-1))
break
case 4:
sResist += .50*(max(0,foeAdj-1)) 
lifeRegen += 2.5*(max(0,foeAdj-1))
stmRegen += 2.5*(max(0,foeAdj-1))
break
}
break

case 1:     //Tooltip and icon
sprite_index = ico_valour
image_index = argument1-1
switch(argument1)
{
case 1: name = 'Basic Valour'
tooltip = 'Gain +1.0 life and stamina regeneration and 20% suppression resistance per foe you are engaged with beyond the first' break
case 2: name = 'Improved Valour'
tooltip = 'Gain +1.5 life and stamina regeneration and 30% suppression resistance per foe you are engaged with beyond the first' break
case 3: name = 'Expert Valour'
tooltip = 'Gain +2.0 life and stamina regeneration and 40% suppression resistance per foe you are engaged with beyond the first' break
case 4: name = 'Master Valour'
tooltip = 'Gain +2.5 life and stamina regeneration and 50% suppression resistance per foe you are engaged with beyond the first' break
}
break

case 2:
if char.will >= 8
return true
else
return false
break
}

#define branchAgainstTheOdds
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
dodge += 5*(max(0,foeAdj-1)) 
break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Against the Odds'
tooltip = 'Gain 5% dodge chance per foe you are engaged with beyond the first'
branch = treeValour
break

case 2:
return true
break
}

#define branchBravery
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle

break

case 1:     //Tooltip and icon
sprite_index = ico_confidence
image_index = 1
name = 'Bravery'
tooltip = ''
branch = treeValour
break

case 2:
return true
break
}