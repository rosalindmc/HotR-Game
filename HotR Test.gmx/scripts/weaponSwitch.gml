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
    if i.invSwitch = 0
    {abilityTT = 'Action#Switch to Ranged Set'}
    else
    {abilityTT = 'Action#Switch to Melee Set'}
    abilityTTLength = 1
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    break
}
