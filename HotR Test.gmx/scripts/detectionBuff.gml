switch(argument0)
{
case 0:     //Stats
icon = ico_detectionBuff
upkp = 60.0
name = 'Assess Situation'
type = 'Focus'
buff = true
tooltip = '+1 Max Block, Larger Front Arc and increased detection'
break

case 1:     //Stats
owner.arc += 40
owner.blockMax += 1
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
