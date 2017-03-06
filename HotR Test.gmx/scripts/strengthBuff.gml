switch(argument0)
{
case 0:     //Stats
icon = ico_strengthBuff
upkp = 60.0
name = 'Empower'
type = 'Focus'
buff = true
tooltip = '+'+string(potency/2)+' POW, +'+string(potency)+' Force Resistance and +'+string(potency*.25)+' Block Strength'
break

case 1:     //Stats
owner.atkDPS += potency/2
owner.blockStr += potency
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
name = 'Empower'
tooltip = '+'+string(potency/2)+' POW, +'+string(potency)+' Force Resistance and +'+string(potency*.25)+' Block Strength'
break
}
