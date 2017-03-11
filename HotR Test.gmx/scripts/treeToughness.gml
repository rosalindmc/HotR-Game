#define treeToughness
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
switch(argument1)
{
case 1: lifeMax += 2
stmMax += 2 break
case 2: lifeMax += 3
stmMax += 3 break
case 3: lifeMax += 4
stmMax += 4 break
case 4: lifeMax += 5
stmMax += 5 break
}
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
if char.might >= 8
return true
else
return false
break
}

#define branchVigour
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onHit[onHitSize,0] = lifeGain
onHit[onHitSize,1] = 'Vigour'
onHit[onHitSize,2] = 20
onHit[onHitSize,3] = 2
onHit[onHitSize,4] = true
onHit[onHitSize,5] = false
onHitSize += 1

onDown[onDownSize,0] = lifeGain
onDown[onDownSize,1] = 'Vigour'
onDown[onDownSize,2] = 100
onDown[onDownSize,3] = 2
onDown[onDownSize,4] = false
onDown[onDownSize,5] = false
onDownSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_vigour
image_index = 1
name = 'Vigour'
tooltip = 'Small chance to heal 2 on attack.  Heal on downing a foe'
branch = treeToughness
break

case 2:
return true
break
}

#define branchMightyBlock
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
onBlock[onBlockSize,0] = statusGive
onBlock[onBlockSize,1] = 'Mighty Block'
onBlock[onBlockSize,2] = daze
onBlock[onBlockSize,3] = 50
onBlock[onBlockSize,4] = 50
onBlock[onBlockSize,5] = 5
onBlockSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_mightyBlock
image_index = 1
name = 'Mighty Block'
tooltip = 'Blocking DAZES the attacker 50% of the time'
branch = treeToughness
break

case 2:
return true
break
}

#define branchThickSkin
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
areHit[areHitSize,0] = healthMit
areHit[areHitSize,1] = 'Thick Skin'
areHit[areHitSize,2] = 30
areHit[areHitSize,3] = 50
areHit[areHitSize,4] = true
areHit[areHitSize,5] = false
areHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_thickSkin
image_index = 1
name = 'Thick Skin'
tooltip = 'Suffer 30% less damage while below half life'
branch = treeToughness
break

case 2:
return true
break
}

#define branchMightyHealth
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
lifeRegen += .8+((will-8)*.12)
break

case 1:     //Tooltip and icon
sprite_index = ico_mightyHealth
image_index = 1
name = 'Mighty Health'
tooltip = 'Increase life regeneration by 40%'
branch = treeToughness
break

case 2:
return true
break
}
#define branchAdrenalineRush
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actAdrenalineRush,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_thickSkin
image_index = 1
name = 'Adrenaline Rush'
tooltip = 'Active: Gain Maximum Life, Stamina and Regeneration'
branch = treeToughness
break

case 2:
return true
break
}

#define branchSecondWind
//tree(how to use, rank)
switch(argument0)
{
case 3:     //case 3 for abilities
addAbility(actSecondWind,-4)
break

case 1:     //Tooltip and icon
sprite_index = ico_mightyHealth
image_index = 1
name = 'Second Wind'
tooltip = 'Active: Regain all stamina and some Life'
branch = treeToughness
break

case 2:
return true
break
}

#define branchSuperiority
//tree(how to use, rank)
switch(argument0)
{
case 0:     //Run when the unit is initialized in battle
areHit[areHitSize,0] = statusGain
areHit[areHitSize,1] = regenerateBuff
areHit[areHitSize,2] = 100
areHit[areHitSize,3] = 2
areHit[areHitSize,4] = 5
areHit[areHitSize,5] = false
areHitSize += 1
break

case 1:     //Tooltip and icon
sprite_index = ico_thickSkin
image_index = 1
name = 'Superiority'
tooltip = 'Gain regeneration on being attacked'
branch = treeToughness
break

case 2:
return true
break
}