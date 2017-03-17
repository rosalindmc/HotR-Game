#define martialTactics


#define actGuardBreak
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actGuardBreak,attackModeGuardBreak,2)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Guard Break'
    abilityTT = 'Special Melee#Cooldown '+string_format(30/i.spellCD,0,1)+'#Stamina Cost 1##Make an attack that breaks 3 blocks and deals 1/4 reduced damage'
    abilityTTLength = 6
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    if i.stm >= 1
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    iv.sprite_index = ico_guardBreak
    break
}

#define actSlow
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actSlow,attackModeSlow,.5)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Slow'
    abilityTT = 'Cooldown '+string_format(30/i.spellCD,0,1)+'#Stamina Cost 1##Attack causes SLOW for '+string_format(15*i.spellDur,0,1)+' sec'
    abilityTTLength = 4
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    if i.stm >= 1
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    iv.sprite_index = ico_slow
    break
}
