#define toughnessTactics


#define actBattleRush
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    applyStatusEffect(battleRush,i,4,10*i.spellDur)
    i.abilityCD[global.actionNum] = 30/i.spellCD
    actionBarReset()
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Battle Rush'
    abilityTT = 'Free Action#Cooldown '+string_format(30/i.spellCD,0,1)+'##Gain +4 Max Life, Max Stamina, Life Regen and Stamina Regen for '+string_format(5*i.spellDur,0,1)+'sec'
    abilityTTLength = 5
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.selectable = true
    iv.sprite_index = ico_battleRush
    break
}

#define actSecondWind
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    gainStamina(i,i.stmMax)
    healLife(i,.3*i.lifeMax)
    i.abilityCD[global.actionNum] = 90/i.spellCD
    actionBarReset()
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Second Wind'
    abilityTT = 'Free Action#Cooldown '+string_format(90/i.spellCD,0,1)+'##Heal all Stamina and 30% Life'
    abilityTTLength = 4
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    if i.stm < i.stmMax or i.life < i.lifeMax
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    iv.sprite_index = ico_secondWind
    break
}
