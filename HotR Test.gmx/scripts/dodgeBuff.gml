switch(argument0)
{
case 0:     //Stats
icon = ico_dodgeBuff
potency = 10
upkp = 60.0
duration = 5.0
name = 'Dodge'
buff = true
tooltip = '+'+string(potency)+' dodge'
break

case 1:     //Stats
owner.dodge += potency
break

case 2:     //Upkeep

break
}
