//Move Action controller script
//disengage(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the move/attack command 
    case 0:
    action = disengage
    
    global.moveTile = ds_list_create()
    ignoreZoC = true
    movementRange(i.isoTile, i.movement*.75, i.movementBonus*.5)
    break
    
    //Run 1 to execute
    case 1:
    //Movement
    if cHover.move and cHover.vis != false
    {
        moveTo(cHover)
        endTurn(min(3.0,cHover.g)/(i.haste+i.movHaste))
    }
    break
    
    //Run 2 to draw
    case 2:
    global.pathDraw = true
    tooltipTitle = 'Disengage'
    abilityTT = 'Action#Move ignoring Zone of Control'
    abilityTTLength = 1
    
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
    //AI use of disengage
    break
    
    //Run 5 for ai priority
    case 5:
    return(random(50))
    break
}
