//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(autoBurst,attackModeBurst,2)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Auto Burst'
    abilityTT = 'Special Attack##Fire '+string(i.autoFire)+' shots'
    abilityTTLength = 2
    break
    
    //Run 3 for ai use 
    case 3:
    if global.attackMode = -4
    {
        autoBurst(0)
    }
    break
    
    //Run 4 for hotbar check 
    case 4:
    if i.shots[3] >= 2
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    iv.sprite_index = ico_autoBurst
    break

    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}
