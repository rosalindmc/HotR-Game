switch(argument0)
{
case 0:     //Stats
icon = ico_daze
upkp = 60.0
potency = 50
name = 'Daze'
type = 'Mental'
buff = false
tooltip = string(potency)+'% Miss chance'
break

case 1:     //Stats
owner.missChance += potency
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
tooltip = string(potency)+'% Miss chance'break
}
