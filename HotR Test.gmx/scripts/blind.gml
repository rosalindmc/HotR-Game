switch(argument0)
{
case 0:     //Stats
icon = ico_daze
upkp = 60.0
potency = 90
name = 'Blind'
type = 'Trick'
buff = false
tooltip = '90% Miss chance, -5 Melee Skill, -10 Ranged Skill'
break

case 1:     //Stats
owner.missChance += 90
owner.mSkill -= 5
owner.rSkill -= 10
owner.threat = false
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
}
