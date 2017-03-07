#define strengthTactics
//This script contains the reference for all Strength Tactics
//strengthTactics()


#define actFeatOfStrength
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    applyStatusEffect(strengthBuff,i,4,5*i.spellDur)
    i.abilityCD[global.actionNum-1] = 30
    i.stm -= 2
    actionBarReset()
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.selectable = true
    iv.sprite_index = ico_readyForMore
    break
}