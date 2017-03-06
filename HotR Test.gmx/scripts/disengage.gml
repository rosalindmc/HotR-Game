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
    movementRange(i.isoTile, i.movement*.5, 0)
    break
    
    //Run 1 to execute
    case 1:
    //Movement
    if cHover.move and cHover.vis != false
    {
        //Move and Update Grid
        makeMovePath(cHover)
        i.pathLength = ii
        i.stm -= cHover.g*.03*i.movStaminaMult*(1+(i.enc*.01))
        if cHover.overlay = 2{i.stm -= cHover.g*.07*i.movStaminaMult*(1+(i.enc*.01))}
        gridUpdate(i, cHover)
        with(i){triggerOnMove()}
        
        //Start the Action
        with(i){actMove(1)}
                
        //End Turn
        endTurn(3.0/(i.haste+i.movHaste))
        wipeTiles()
    }
    break
    
    //Run 2 to draw
    case 2:
    global.pathDraw = true
    
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
    break
    
    //Run 4 for hotbar check 
    case 4:
    break
}
