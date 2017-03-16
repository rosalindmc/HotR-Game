switch(argument0)
{
case 0:     //Stats
icon = ico_strengthBuff
upkp = 60.0
name = 'Celerity'
type = 'Focus'
buff = true
tooltip = '+25% action speed, +10% dodge'
break

case 1:     //Stats
owner.haste *= 1.25
owner.dodge += 10
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
