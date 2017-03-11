switch(argument0)
{
case 0:     //Stats
icon = ico_fatigue
upkp = 60.0
duration = 20.0
type = 'Core'
buff = false
showDuration = false
tooltip = 'Reduced stamina and life regeneration and increases chance of death'
image_index = potency

switch(potency)
{
case 0:
instance_destroy()
break
case 1:
name = 'Injured'
break
case 2:
name = 'Wounded'
break
case 3:
case 4:
case 5:
name = 'Gravely Wounded'
break
}
break

case 1:     //Stats
owner.lifeRegen /= 1+(potency*.1)
owner.stmRegen /= 1+(potency*.1)
break

case 2:     //Upkeep
break

case 3:     //Stacking
potency = ipot
duration = idur
image_index = potency

switch(potency)
{
case 0:
instance_destroy()
break
case 1:
name = 'Injured'
break
case 2:
name = 'Wounded'
break
case 3:
case 4:
case 5:
name = 'Gravely Wounded'
break
}
}
