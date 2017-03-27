//Battle Action controller script
//battle(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the move/attack command 
    case 0:
    action = battle
    global.castMouse = 0
    //Check Line of Sight to all enemies
    if i.rangeAttack = true and i.shots[i.atkHand+i.dualWield+((i.invSwitch-1)*2)] > 0
    {
        with(obj_character)
        {
            if team != i.team and active = true
            {
                if los(2, i.isoTile, isoTile)
                {
                    isoTile.rangedAttack = true
                    isoTile.overlay = 3
                }
            }
        }
    }
    battleAttackRange(i)
    break
    
    //Run 1 to execute
    case 1:
    //Ranged Attack
    if cHover.rangedAttack = true and (key_meleeToggle = false or cHover.meleeAttack = false)
    {
        //Set Target
        i.target = cHover.occupant
    
        //Ranged Attack
        with(i){ranged()}
        //End Turn
        endTurn(i.s/(i.haste+i.atkHaste))
    }
    //Melee Attack
    if cHover.meleeAttack = true and (key_meleeToggle = true or cHover.rangedAttack = false) and global.attackFromTile != noone
    {
        //Set Target
        i.target = cHover.occupant
        
        //Start the Action
        with(i){actAttack(1)}
        
        wipeTiles()
    }
    
    break
    
    //Run 2 to draw
    case 2:
    global.pathDraw = false
    tooltipTitle = 'Battle'
    abilityTT = 'Action#Attack a foe in range'
    abilityTTLength = 1
    
    if instance_exists(cHover)
    {   
        //Ranged Attack Tooltip
        if cHover.rangedAttack = true and (key_meleeToggle = false or cHover.meleeAttack = false)
        {
            attacker = i
            target = cHover.occupant
            
            timeReset()
            i.atkHand += i.dualWield
            attackPreview(false)
            i.atkHand -= i.dualWield
            global.testSlot.delayAdd = i.s/(i.haste+i.atkHaste)                
            initiativeSlotAnticipate()
        }
        //Melee Attack Tooltip
        else if cHover.meleeAttack = true and (key_meleeToggle = true or cHover.rangedAttack = false) and global.attackFromTile != noone
        {   
            attacker = i
            target = cHover.occupant
            suppressionPreview(true)
            attackPreview(true)
            global.testSlot.delayAdd = i.s/(i.haste+i.atkHaste)                
            initiativeSlotAnticipate()
        }
        else
        {
            initiativeSlotReset()
        }
    }
    else
    {
        initiativeSlotReset()
    }
    break
    
    //Run 3 for ai use 
    case 3:
    attackRandom()
    global.aiDone = true
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break  
}
