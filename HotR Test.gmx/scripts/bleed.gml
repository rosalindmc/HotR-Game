switch(argument0)
{
case 0:     //Stats
icon = ico_bleed
upkp = 5.0
name = 'Bleed '+string(potency)
type = 'Wound'
buff = false
tooltip = 'Suffering '+string(potency)+' damage and fatigue loss every 5 seconds.'
break

case 1:     //Stats
break

case 2:     //Upkeep
i = floor(potency+random(.99))
owner.stm -= i
owner.life -= i
upkp = 5.0

ii = instance_create(owner.x,owner.y-owner.h-owner.height,obj_descriptor)
ii.text = i
ii.font = fnt_tiny
ii.colour1 = dkRed
ii.colour2 = c_red
break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
name = 'Bleed '+string(potency)
tooltip = 'Suffering '+string(potency)+' damage and fatigue loss every 5 seconds.'
break
}
