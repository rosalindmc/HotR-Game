switch(argument0)
{
case 0:     //Stats
icon = ico_daze
potency = 2
upkp = 60.0
duration = 5.0
name = 'Strength'
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
}
