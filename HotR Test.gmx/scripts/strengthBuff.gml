switch(argument0)
{
case 0:     //Stats
icon = ico_strengthBuff
potency = 2
upkp = 60.0
duration = 5.0
name = 'Strength '+string(potency)
type = 'Focus'
buff = true
tooltip = '+'+string(potency)+' DPS, Force Resistance and Block Strength'
break

case 1:     //Stats
owner.atkDPS += potency
owner.fResist += potency
owner.blockStr += potency
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
name = 'Strength '+string(potency)
tooltip = '+'+string(potency)+' DPS, Force Resistance and Block Strength'
break
}