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
    i.abilityCD[global.actionNum] = 30/i.spellCD
    spendStamina(i,1)
    actionBarReset()
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Feat of Strength'
    abilityTT = 'Free Action#Cooldown '+string_format(30/i.spellCD,0,1)+'#Stamina Cost 2##Gain EMPOWER 4 for '+string_format(5*i.spellDur,0,1)+'sec'
    abilityTTLength = 4
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
    iv.sprite_index = ico_featOfStrength
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
        applyStatusEffect(immobilize,i.target,100,5*i.spellDur)
        i.abilityCD[global.actionNum] = 10/i.spellCD
        endTurn(2.0/i.haste)
    }
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Grapple'
    abilityTT = 'Action#Cooldown '+string_format(10/i.spellCD,0,1)+'##IMMOBILIZE an adjacent foe with your free hand for '+string_format(5*i.spellDur,0,1)+'sec'
    abilityTTLength = 4
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.sprite_index = ico_grapple
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

#define actSunderArmour
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    setAttackMode(actSunderArmour,attackModeSunder,2)
    break
    
    //Run 1 to execute
    case 1:
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Sunder Armour'
    abilityTT = 'Special Attack#Cooldown '+string_format(30/i.spellCD,0,1)+'#Stamina Cost 1##Attack gains SUNDER 2'
    abilityTTLength = 4
    break
    
    //Run 3 for ai use 
    case 3:
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
    iv.sprite_index = ico_sunderArmour
    break
}
