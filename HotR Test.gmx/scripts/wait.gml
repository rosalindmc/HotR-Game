//Wait Action controller script
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    i.stm = min(i.stm+(i.stmRegen*.25*(1-(i.enc*.01))),i.stmMax)
    endTurn(2.0)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Wait'
    abilityTT = 'Action#End turn and gain stamina'
    abilityTTLength = 1
    global.testSlot.delayAdd = 2.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    wait(0)
    global.aiDone = true
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100-(100*(i.stm/i.stmMax))))
    break
}
