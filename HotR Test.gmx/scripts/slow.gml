switch(argument0)
{
case 0:     //Stats
icon = ico_cripple
upkp = 120.0
name = 'Slow'
type = 'Wound'
buff = false
tooltip = 'Reduced Movement and Dodge'
break

case 1:     //Stats
owner.movement *= potency
owner.movementBonus *= potency
owner.dodge -= 10
break

case 2:     //Upkeep
break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
