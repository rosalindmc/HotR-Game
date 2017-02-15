//Battle Action controller script
//battle(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the move/attack command 
    case 0:
    action = battle
    //Check Line of Sight to all enemies
    if i.rangeAttack = true
    {
        with(obj_character)
        {
            if team != i.team
            {
                if los(40, i.isoTile, isoTile)
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
        endTurn(3.0/i.haste)//Temp, turn will end after attack resolves when done
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
    if instance_exists(cHover)
    {   
        //Ranged Attack Tooltip
        if cHover.rangedAttack = true and (key_meleeToggle = false or cHover.meleeAttack = false)
        {
            attacker = i
            target = cHover.occupant
            attackPreview(false)
            global.testSlot.delayAdd = i.s/(i.haste+i.atkHaste)                
            initiativeSlotAnticipate()
        }
        //Melee Attack Tooltip
        else if cHover.meleeAttack = true and (key_meleeToggle = true or cHover.rangedAttack = false) and global.attackFromTile != noone
        {   
            attacker = i
            target = cHover.occupant
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
}
