switch(argument0)
{
case 0:     //Stats
icon = ico_fatigue
upkp = 60.0
duration = 2.0
type = 'Fatigue'
buff = false
showDuration = false
tooltip = 'Reduced dodge, skill, life regeneration, action speed and movement'
image_index = potency

switch(potency)
{
case 0:
instance_destroy()
break
case 1:
name = 'Winded'
break
case 2:
name = 'Tired'
break
case 3:
name = 'Exhausted'
break
}
break

case 1:     //Stats
owner.haste /= 1+(potency*.2)
owner.dodge = max(owner.dodge-(potency*5),0)
owner.mSkill = max(owner.mSkill-potency,0)
owner.rSkill = max(owner.rSkill-potency,0)
owner.cSkill = max(owner.cSkill-potency,0)
owner.lifeRegen /= 1+(potency*.25)
owner.stmRegen /= 1+(potency*.15)
owner.movement /= 1+(potency*.2)
owner.movementBonus /= 1+(potency*.5)
owner.blockStr /= 1+(potency*.2)
owner.blockGen /= 1+(potency*.2)
break

case 2:     //Upkeep
break

case 3:     //Stacking
potency = ipot
duration = idur
image_index = potency

switch(potency)
{
case 0:
instance_destroy()
break
case 1:
name = 'Winded'
image_index = 1
break
case 2:
name = 'Tired'
image_index = 2
break
case 3:
name = 'Exhausted'
image_index = 3
break
}
}
