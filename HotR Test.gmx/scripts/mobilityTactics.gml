#define mobilityTactics
//This script contains the reference for all Mobility Tactics
//mobilityTactics()

#define actTumble
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the move/attack command 
    case 0:
    action = actTumble
    
    global.moveTile = ds_list_create()
    ignoreZoC = true
    movementRange(i.isoTile, i.movement, 0)
    break
    
    //Run 1 to execute
    case 1:
    //Movement
    if cHover.move and cHover.vis != false
    {
        moveTo(cHover)
    }
    i.abilityCD[global.actionNum] = 10/i.spellCD
    spendStamina(i,2)
    actionBarReset()
    break
    
    //Run 2 to draw
    case 2:
    global.pathDraw = true
    tooltipTitle = 'Tumble'
    abilityTT = 'Free Action#Cooldown '+string_format(10/i.spellCD,0,1)+'##Move ignoring Zone of Control'
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
    iv.sprite_index = ico_tumble
    break
}

#define actBurstOfSpeed
var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the move/attack command 
    case 0:
    action = actBurstOfSpeed
    
    global.moveTile = ds_list_create()
    movementRange(i.isoTile, i.movement*1.5, i.movementBonus*1.5)
    break
    
    //Run 1 to execute
    case 1:
    //Movement
    if cHover.move and cHover.vis != false
    {
        moveTo(cHover)
        endTurn(3.0/(i.haste+i.movHaste))
    }
    i.abilityCD[global.actionNum] = 10/i.spellCD
    break
    
    //Run 2 to draw
    case 2:
    global.pathDraw = true
    tooltipTitle = 'Burst of Speed'
    abilityTT = 'Action#Cooldown '+string_format(10/i.spellCD,0,1)+'##Move very far'
    abilityTTLength = 3
    
    if instance_exists(cHover)
    {
        //Movement Tooltip
        if cHover.move and cHover.vis != false
        {
            //Move
            suppressionPreview(false)
            global.testSlot.delayAdd = (3.0/(i.haste+i.movHaste))
            initiativeSlotAnticipate()
        }
    }
    break
    
    //Run 3 for ai use 
    case 3:
    //Movement Tooltip
        if cHover.move and cHover.vis != false
        {
            //Move
            suppressionPreview(false)
            global.testSlot.delayAdd = (3.0/(i.haste+i.movHaste))
            initiativeSlotAnticipate()
        }
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.sprite_index = ico_burstOfSpeed
    if embattled(i)
    {
        iv.selectable = false
    }
    else
    {
        iv.selectable = true
    }
    break
}