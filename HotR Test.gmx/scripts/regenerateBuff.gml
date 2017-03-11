switch(argument0)
{
case 0:     //Stats
icon = ico_strengthBuff
upkp = 60.0
name = 'Regenerate'
type = 'Focus'
buff = true
tooltip = '+'+string(potency)+' Life Regen'
break

case 1:     //Stats
owner.lifeRegen += potency
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
tooltip = '+'+string(potency)+' Life Regen'
break
}
