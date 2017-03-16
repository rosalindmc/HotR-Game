#define subterfugeTactics
//This script contains the reference for all Subterfuge Tactics
//subterfugeTactics()

#define actHide
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    applyStatusEffect(stealth,i,1,15*i.spellDur)
    i.abilityCD[global.actionNum] = 15/i.spellCD
    endTurn(1.0)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Hide'
    abilityTT = 'Action#Cooldown '+string_format(15/i.spellCD,0,1)+'##Gain STEALTH for '+string_format(15*i.spellDur,0,1)+' sec'
    abilityTTLength = 3
    global.testSlot.delayAdd = 1.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.selectable = canHide()
    iv.sprite_index = ico_actHide
    break
}

#define actVanish
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    applyStatusEffect(stealth,i,1,15*i.spellDur)
    i.abilityCD[global.actionNum] = 60/i.spellCD
    actionBarReset()
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Vanish'
    abilityTT = 'Free Action#Cooldown '+string_format(60/i.spellCD,0,1)+'##Gain STEALTH for '+string_format(15*i.spellDur,0,1)+' sec'
    abilityTTLength = 3
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.selectable = true
    iv.sprite_index = ico_vanish
    break
}

#define actFightDirty
//wait(HowtoUse)
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    action = actFightDirty
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
        applyStatusEffect(blind,i.target,100,5*i.spellDur)
        i.abilityCD[global.actionNum] = 30/i.spellCD
        endTurn(1.0/i.haste)
    }
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Fight Dirty'
    abilityTT = 'Action#Cooldown '+string_format(30/i.spellCD,0,1)+'##BLIND an adjacent foe with your free hand for '+string_format(5*i.spellDur,0,1)+'sec'
    abilityTTLength = 5
    global.testSlot.delayAdd = 1.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.sprite_index = ico_fightDirty
    if ifAbilityRange(i,1.5) and i.dualWield = false and i.hasShield = false
    {
        iv.selectable = true
    }
    else
    {
        iv.selectable = false
    }
    break
}

#define actDebilitate
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actDebilitate,attackModeDebilitate,1.5)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Debilitate'
    abilityTT = 'Special Attack#Cooldown '+string_format(30/i.spellCD,0,1)+'#Stamina Cost 1##Attack gains STUN '+string_format(1.5*i.spellDur,0,1)+' sec, doubled on backstab'
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
    iv.sprite_index = ico_debilitate
    break
}

#define canHide
var i = global.control

with(obj_character)
{
    if team != i.team and bold != 0
    {
    if abs(angle_difference(point_direction(x,0,i.x,i.y*2),facing)) < arc
    {
        if los(sight,sightTile,i.isoTile)
        {
            return false
        }
    }
    }
}
return true
