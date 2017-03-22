//Retreat Action controller script
//retreat(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    eventStart(retreatConfirm,0)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Retreat'
    abilityTT = 'Party Action#Order all characters to retreat'
    abilityTTLength = 1
    break
    
    //Run 3 for ai use 
    case 3:
    if global.pow1 < global.pow2
    {
        with(obj_character)
        {
            if team = i.team
            {
                readiedAction = retreating
            }
        }
        retreating()
        global.aiDone = true
    }
    else
    {
        i.readiedAction = retreating
        retreating()
        global.aiDone = true
    }   
    break
    
    //Run 5 for ai priority
    case 5:
    global.pow1 = 0
    global.pow2 = 0
    
    with(obj_character)
    {
        if team = global.control.team
        {
            global.pow1 += expOnKill/(1+(wounds*.5))
        }
        if team != global.control.team
        {
            global.pow2 += expOnKill/(1+(wounds*.5))
        }
    }
    
    if global.pow1 < global.pow2
    {
    return random(50)*global.pow2/global.pow1
    }
    else
    {
    return random(50)*i.wounds
    }
    break
}
