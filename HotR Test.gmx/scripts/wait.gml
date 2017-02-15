//Wait Action controller script
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    i.stm = min(i.stm+(i.stmRegen*(1-(i.enc*.01))),i.stmMax)
    endTurn(2.0)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    
    break
}
