switch(argument0)
{
case 0:     //Stats
icon = ico_immobilize
upkp = 120.0
name = 'Immobilized'
type = 'Wound'
buff = false
tooltip = 'Cannot move or dodge'
break

case 1:     //Stats
owner.movement = 0
owner.threat = false
owner.movementBonus = 0
owner.dodge -= 100
break

case 2:     //Upkeep
break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
