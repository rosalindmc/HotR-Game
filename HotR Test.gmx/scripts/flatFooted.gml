switch(argument0)
{
case 0:     //Stats
icon = ico_footwork
upkp = 120.0
name = 'Footwork'
type = 'Focus'
buff = true
tooltip = 'Gain +1.0 Melee Skill and cannot move'
break

case 1:     //Stats
owner.movement = 0
owner.movementBonus = 0
owner.mSkill += 1.0
break

case 2:     //Upkeep
break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
