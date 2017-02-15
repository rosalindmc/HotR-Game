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
    endTurn(1.5/i.haste)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    
    break
}
