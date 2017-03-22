switch(argument0)
{
case 0:     //Stats
icon = ico_stealth
upkp = 60.0
name = 'Stealth'
type = 'Focus'
buff = true
tooltip = 'Hidden'

if potency = 1 and owner.sneakIncognito = true
{
    popup('Incognito',id)
    
    with(obj_character)
    {
        if los(1.5,sightTile,other.owner.sightTile) and id != other.owner.id and team = other.owner.team
        {
            applyStatusEffect(stealth,id,2,5)
        }
    }
}

break

case 1:     //Stats
owner.hidden = true
owner.threat = false
owner.movement *= owner.sneakMove

owner.onAttack[owner.onAttackSize,0] = sneakAttack
owner.onAttack[owner.onAttackSize,1] = 'Sneak Attack'
owner.onAttack[owner.onAttackSize,2] = owner.sneakDamage
owner.onAttack[owner.onAttackSize,3] = false
owner.onAttack[owner.onAttackSize,4] = false
owner.onAttack[owner.onAttackSize,5] = false
owner.onAttackSize += 1
break

case 2:     //Upkeep

break

case 3:     //Stacking
potency = max(potency,ipot)
duration = max(duration,idur)
break
}
