#define reload1
//Wait Action controller script
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    i.shots[1] = i.maxShots[1]
    i.reloads[1] -= 1
    i.stm -= i.wepReloadStamina[1]
    endTurn(i.wepReload[1]/i.haste)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Reload '+i.wepName[1]
    abilityTT = 'Action#Reload your mainhand weapon'
    abilityTTLength = 1
    global.testSlot.delayAdd = i.wepReload[1]/i.haste
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    wait(0)
    global.aiDone = true
    break
    
    case 4:
    if i.reloads[1] > 0
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}

#define reload2
//Wait Action controller script
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    i.shots[2] = i.maxShots[2]
    i.reloads[2] -= 1
    i.stm -= i.wepReloadStamina[2]
    endTurn(i.wepReload[2]/i.haste)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Reload '+i.wepName[2]
    abilityTT = 'Action#Reload your offhand weapon'
    abilityTTLength = 1
    global.testSlot.delayAdd = i.wepReload[2]/i.haste
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    wait(0)
    global.aiDone = true
    break
    
    case 4:
    if i.reloads[2] > 0
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}

#define reload3
//Wait Action controller script
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    i.shots[3] = i.maxShots[3]
    i.reloads[3] -= 1
    i.stm -= i.wepReloadStamina[1]
    endTurn(i.wepReload[1]/i.haste)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Reload '+i.wepName[3]
    abilityTT = 'Action#Reload your ranged weapon'
    abilityTTLength = 1
    global.testSlot.delayAdd = i.wepReload[1]/i.haste
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    wait(0)
    global.aiDone = true
    break
    
    case 4:
    if i.reloads[3] > 0
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    break
    
    //Run 5 for ai priority
    case 5:
    return(50+random(100))
    break
}