switch(argument0)
{
case 0:     //Stats
icon = ico_strengthBuff
upkp = 60.0
name = 'Strength '+string(potency)
type = 'Focus'
buff = true
tooltip = '+'+string(potency*.1)+' POW, +'+string(potency)+' Force Resistance and +'+string(potency*.25)+' Block Strength'
break

case 1:     //Stats
owner.atkDPS += potency*.4
owner.fResist += potency
owner.blockStr += potency
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
name = 'Strength '+string(potency)
tooltip = '+'+string(potency*.1)+' POW, +'+string(potency)+' Force Resistance and +'+string(potency*.25)+' Block Strength'
break
}
