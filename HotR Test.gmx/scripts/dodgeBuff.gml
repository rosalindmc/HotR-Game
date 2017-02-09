switch(argument0)
{
case 0:     //Stats
icon = ico_dodgeBuff
potency = 10
upkp = 60.0
duration = 5.0
name = 'Dodge '+string(potency)
type = 'Focus'
buff = true
tooltip = '+'+string(potency)+' dodge'
break

case 1:     //Stats
owner.dodge += potency
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
name = 'Dodge '+string(potency)
tooltip = '+'+string(potency)+' dodge'
break
}
