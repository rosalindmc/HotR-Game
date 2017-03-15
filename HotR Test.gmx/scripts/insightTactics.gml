#define insightTactics
//This script contains the reference for all Insight Tactics
//insightTactics()

#define actAssessSituation
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    i.blocks += 1
    applyStatusEffect(detectionBuff,i,4,10*i.spellDur)
    i.abilityCD[global.actionNum] = 10/i.spellCD
    endTurn(1.0)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Assess Situation'
    abilityTT = 'Action#Cooldown '+string_format(10/i.spellCD,0,1)+'##Gain a Block and increased detection range and front arc for '+string_format(1*i.spellDur,0,1)+' sec'
    abilityTTLength = 5
    global.testSlot.delayAdd = 1.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.selectable = true
    iv.sprite_index = ico_assessSituation
    break
}

#define actPreciseStrike
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actPreciseStrike,attackModePreciseStrike,(i.cunning-3)*.2)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Precise Strike'
    abilityTT = 'Special Attack#Cooldown '+string_format(30/i.spellCD,0,1)+'#Stamina Cost 1##Make an attack with +'+string_format(.2*(i.cunning-3),0,1)+' Penetration and Damage'
    abilityTTLength = 5
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
    iv.sprite_index = ico_preciseStrike
    break
}

#define actSpotWeakness
//wait(HowtoUse)
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    action = actSpotWeakness
    global.castMouse = 2
    rangeAbilityRange(i,10,true)
    break
    
    //Run 1 to execute
    case 1:
    if cHover.meleeAttack = true
    {
        //Set Target
        i.target = cHover.occupant
        
        //Apply Status
        applyStatusEffect(marked,i.target,1,15*i.spellDur)
        i.abilityCD[global.actionNum] = 30/i.spellCD
        i.abilityCD[global.actionNum+1] = 10/i.spellCD
        endTurn(1.0)
    }
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Spot Weakness'
    abilityTT = 'Action#Range 10m#Cooldown '+string_format(10/i.spellCD,0,1)+'##MARK the target for '+string_format(15*i.spellDur,0,1)+' sec, MARKED targets suffer 10% more damage'
    abilityTTLength = 6
    global.testSlot.delayAdd = 1.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.sprite_index = ico_spotWeakness
    if ifAbilityRange(i,10)
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    break
}

#define actExploitWeakness
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actExploitWeakness,attackModeExploitWeakness,(i.cunning-3)*.7)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Exploit Weakness'
    abilityTT = 'Special Attack#Cooldown '+string_format(60/i.spellCD,0,1)+'#Stamina Cost 1##Make an attack against a MARKED foe for +'+string_format((i.cunning-3)*.7,0,1)+' damage'
    abilityTTLength = 6
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.selectable = false
    if i.stm >= 1 
    {
        with(obj_status)
        {
            if effect = marked and owner.team != i.team
            {
                other.iv.selectable = true
            }
        }       
    }
    iv.sprite_index = ico_exploitWeakness
    break
}

#define actSap
//wait(HowtoUse)
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    action = actSap
    global.castMouse = 2
    meleeAbilityRange(i)
    break
    
    //Run 1 to execute
    case 1:
    if cHover.meleeAttack = true
    {
        //Set Target
        i.target = cHover.occupant
        
        //Add grapple animation eventually
        applyStatusEffect(sleep,i.target,100,15*i.spellDur)
        i.abilityCD[global.actionNum] = 30/i.spellCD
        endTurn(1.0/i.haste)
    }
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Sap'
    abilityTT = 'Action#Cooldown '+string_format(30/i.spellCD,0,1)+'##Sleep an adjacent foe for '+string_format(15*i.spellDur,0,1)+' sec, only usable if not under melee Threat'
    abilityTTLength = 5
    global.testSlot.delayAdd = 1.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.sprite_index = ico_sap
    if embattled(i) and i.isoTile.zoneControl = false
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    break
}