switch(argument0)
{
case 0:     //Stats
icon = ico_daze
potency = 50
upkp = 60.0
duration = 2.0
name = 'Daze'
tooltip = string(potency)+'% Miss chance'
break

case 1:     //Stats
owner.missChance += potency
break

case 2:     //Upkeep

break
}
