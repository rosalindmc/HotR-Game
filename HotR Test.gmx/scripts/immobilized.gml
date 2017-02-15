switch(argument0)
{
case 0:     //Stats
icon = ico_immobilized
upkp = 120.0
name = 'Immobilized'
type = 'Wound'
buff = false
tooltip = 'Cannot move or dodge'
break

case 1:     //Stats
owner.movement = 0
owner.movementBonus = 0
break

case 2:     //Upkeep
break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
