#define toughnessTactics


#define actAdrenalineRush
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    applyStatusEffect(adrenalineRush,i,2,10*i.spellDur)
    i.abilityCD[global.actionNum] = 30/i.spellCD
    actionBarReset()
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Adrenaline Rush'
    abilityTT = 'Gain Max Life and Regen'
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
    iv.sprite_index = ico_thickSkin
    break
}

#define actSecondWind
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    i.stm = i.stmMax
    i.life = floor(i.life+(.3*i.lifeMax))
    i.abilityCD[global.actionNum] = 60/i.spellCD
    actionBarReset()
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Second Wind'
    abilityTT = 'Heal all Stamina and Some Life'
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
    iv.sprite_index = ico_mightyHealth
    break
}
