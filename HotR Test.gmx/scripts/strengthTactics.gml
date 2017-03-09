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
    i.abilityCD[global.actionNum] = 30
    i.stm -= 2
    actionBarReset()
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Feat of Strength'
    abilityTT = 'Gain Empower 4'
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    if i.stm >= 2
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    iv.sprite_index = ico_readyForMore
    break
}

#define actGrapple
//wait(HowtoUse)
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    action = actGrapple
    meleeAbilityRange(i)
    break
    
    //Run 1 to execute
    case 1:
    if cHover.meleeAttack = true
    {
        //Set Target
        i.target = cHover.occupant
        
        //Add grapple animation eventually
        applyStatusEffect(immobilize,i.target,100,5*i.spellDur)
        i.abilityCD[global.actionNum] = 10
        endTurn(2.0/i.haste)
    }
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Grapple'
    abilityTT = 'Immobilize a foe'
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.sprite_index = ico_crunch
    if embattled(i)
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    break
}
