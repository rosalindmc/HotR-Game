switch(argument0)
{
case 0:     //Stats
icon = ico_daze
upkp = 60.0
name = 'Stun'
type = 'Mental'
buff = false
tooltip = 'Delayed Action'
owner.initSlot.delay += duration
break

case 1:     //Stats
owner.missChance += 100
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
tooltip = 'Delayed Action'break
}
