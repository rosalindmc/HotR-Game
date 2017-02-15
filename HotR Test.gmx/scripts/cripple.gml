switch(argument0)
{
case 0:     //Stats
icon = ico_cripple
upkp = 120.0
name = 'Cripple '+string(potency)
type = 'Wound'
buff = false
tooltip = '-'+string(potency*.1)+' POW, -'+string(potency)+' Skill and -'+string(potency*.25)+' Block Strength'
break

case 1:     //Stats
owner.atkDPS -= potency*.4
owner.fResist -= potency
owner.blockStr -= potency
break

case 2:     //Upkeep
break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
name = 'Cripple '+string(potency)
tooltip = '-'+string(potency*.1)+' POW, -'+string(potency)+' Skill and -'+string(potency*.25)+' Block Strength'
break
}
