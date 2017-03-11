switch(argument0)
{
case 0:     //Stats
icon = ico_strengthBuff
upkp = 60.0
name = 'Adrenaline Rush'
type = 'Focus'
buff = true
tooltip = '+'+string(potency)+' Life, +'+string(potency)+' Stamina and +'+string(potency)+' Regeneration'
break

case 1:     //Stats
owner.stmMax += potency
owner.lifeMax += potency
owner.stmRegen += potency
owner.lifeRegen += potency
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
