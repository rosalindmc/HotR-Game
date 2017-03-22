switch(argument0)
{
case 0:     //Stats
icon = ico_bleed
upkp = 5.0
name = 'Bleed'
type = 'Wound'
buff = false
tooltip = 'Suffering '+string(potency)+' damage and fatigue loss every 5 seconds.'
break

case 1:     //Stats
break

case 2:     //Upkeep
loseStamina(owner,potency)
woundLife(owner,creator,potency,typeBlood)
upkp = 5.0
break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
name = 'Bleed'
tooltip = 'Suffering '+string(potency)+' damage and fatigue loss every 5 seconds.'
break
}
