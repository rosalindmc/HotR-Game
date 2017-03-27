//Wait Action controller script
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    with(i)
    {
        if invSwitch = 1
        {
            iCEquip(2)
            blocks = 0
        }
        else
        {
            iCEquip(1)
            blocks = 0
        }
    }
    endTurn(1.0/i.haste)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    global.testSlot.delayAdd = (1.0/i.haste)
    tooltipTitle = 'Switch Weapons'
    if i.invSwitch = 1
    {abilityTT = 'Action#Switch to '+i.wepName[3]
    abilityTTLength = 1}
    else if i.wepName[2] = ''
    {abilityTT = 'Action#Switch to '+i.wepName[1]
    abilityTTLength = 1}
    else
    {abilityTT = 'Action#Switch to '+i.wepName[1]+' and '+i.wepName[2]
    abilityTTLength = 2}  
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    weaponSwitch(0)
    global.aiDone = true
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}
