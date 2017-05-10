#define disciplineTactics
//This script contains the reference for all Discipline Tactics
//disciplineTactics()

#define actGuardedAttack
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actGuardedAttack,attackModeGuardedAttack,2)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Guarded Attack'
    abilityTT = 'Special Melee#Cooldown '+string_format(5/i.spellCD,0,1)+'#Stamina Cost 1##Make a slow attack and gain a block'
    abilityTTLength = 5
    break
    
    //Run 3 for ai use 
    case 3:
    if global.attackMode = -4
    {
        actGuardedAttack(0)
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
    iv.sprite_index = ico_guardedAttack
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}

#define actHoldTheLine
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    applyStatusEffect(blockBuff,i,i.foeAdj,10*i.spellDur,-1)
    i.abilityCD[global.actionNum] = 30/i.spellCD
    spendStamina(i,1)
    endTurn(1.0)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Hold the Line'
    abilityTT = 'Action#Cooldown '+string_format(30/i.spellCD,0,1)+'##Gain a block for each adjacent foe'
    abilityTTLength = 4
    global.testSlot.delayAdd = 1.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    actHoldTheLine(0)
    global.aiDone = true
    break
    
    //Run 4 for hotbar check 
    case 4:
    if i.stm >= 1 and i.foeAdj >= 1
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    iv.sprite_index = ico_holdTheLine
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(100))
    break
}