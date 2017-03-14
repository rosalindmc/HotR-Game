switch(argument0)
{
case 0:     //Stats
icon = ico_sleep
upkp = 1.0
name = 'Sleep'
type = 'Mental'
buff = false
tooltip = 'Sleeping, will wake up if hit'
break

case 1:     //Stats
owner.missChance += 100
owner.threat = false
owner.dodge -= 100

owner.areWounded[owner.areWoundedSize,0] = statusGain
owner.areWounded[owner.areWoundedSize,1] = 'Remove Sleep'
owner.areWounded[owner.areWoundedSize,2] = sleep
owner.areWounded[owner.areWoundedSize,3] = 100
owner.areWounded[owner.areWoundedSize,4] = 0
owner.areWounded[owner.areWoundedSize,5] = 0
owner.areWoundedSize += 1
break

case 2:     //Upkeep
owner.initSlot.delay += 1
break

case 3:     //Stacking
potency = max(potency,ipot)
duration = idur
tooltip = 'Delayed Action'break
}
