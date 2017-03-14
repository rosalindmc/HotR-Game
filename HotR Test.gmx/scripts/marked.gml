switch(argument0)
{
case 0:     //Stats
icon = ico_spotWeakness
upkp = 60.0
name = 'Marked'
type = 'Focus'
buff = false
tooltip = 'Attacks made against this character inflict +10% damage'
break

case 1:     //Stats
owner.missChance += 0.01
owner.dmgMitigation -= 0.1
owner.mark = true
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
