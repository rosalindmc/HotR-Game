#define duelingTactics
//This script contains the reference for all Dueling Tactics
//duelingTactics()

#define actFlourish
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actFlourish,attackModeFlourish,2)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Flourish'
    abilityTT = 'Special Melee#Cooldown '+string_format(30/i.spellCD,0,1)+'#Stamina Cost 1##Attack DAZE all adjacent foes but the target'
    abilityTTLength = 5
    break
    
    //Run 3 for ai use 
    case 3:
    if global.attackMode = -4
    {
        actFlourish(0)
    }
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
    iv.sprite_index = ico_flourish
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}

#define actHeroicStrike
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actHeroicStrike,attackModeHeroicStrike,i.fellowship/2)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Heroic Strike'
    abilityTT = 'Special Melee#Cooldown '+string_format(30/i.spellCD,0,1)+'#Stamina Cost 1##Attack gains +'+string_format(i.fellowship/2,0,1)+' Melee Skill'
    abilityTTLength = 5
    break
    
    //Run 3 for ai use 
    case 3:
    if global.attackMode = -4
    {
        actHeroicStrike(0)
    }
    break
    
    //Run 4 for hotbar check 
    case 4:
    if i.stm >= 1 and i.wepStrMult[i.atkHand] != 0
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    iv.sprite_index = ico_heroicStrike
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}

#define actFootwork
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the move/attack command 
    case 0:
    action = actFootwork
    
    global.moveTile = ds_list_create()
    ignoreZoC = true
    movementRange(i.isoTile, 1, 0)
    break
    
    //Run 1 to execute
    case 1:
    //Movement
    if cHover.move and cHover.vis != false
    {
        moveTo(cHover)
        popup('Footwork',i)
        i.abilityCD[global.actionNum] = 5/i.spellCD
        actionBarReset()
        applyStatusEffect(flatFooted,i,100,.01)    
    }
    break
    
    //Run 2 to draw
    case 2:
    global.pathDraw = true
    tooltipTitle = 'Footwork'
    abilityTT = 'Free Action#Cooldown '+string_format(5/i.spellCD,0,1)+'##Move a single space ignoring Zone of Control, gain +1.0 Melee Skill and lose all movement for the remainder of your action'
    abilityTTLength = 7
    break
    
    //Run 3 for ai use 
    case 3:
    //ai use
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.selectable = true
    iv.sprite_index = ico_footwork
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}

#define actChallenge
//wait(HowtoUse)
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    action = actChallenge
    global.castMouse = 2
    meleeAbilityRange(i)
    break
    
    //Run 1 to execute
    case 1:
    if cHover.meleeAttack = true
    {
        //Set Target
        i.target = cHover.occupant
        
        //Add challenge animation eventually
        applyStatusEffect(blockBuff,i,1,5*i.spellDur)
        target.readiedTarget = i
        target.readiedAction = dualStrike
        i.abilityCD[global.actionNum] = 30/i.spellCD
        endTurn(1.0/i.haste)
        popup('Challenge',i)
    }
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Challenge'
    abilityTT = 'Action#Cooldown '+string_format(30/i.spellCD,0,1)+'##Force an adjacent foe to attack you on their next turn and gain a block'
    abilityTTLength = 5
    global.testSlot.delayAdd = 1.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    //ai use
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.sprite_index = ico_challenge
    if ifAbilityRange(i,1.5)
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}
