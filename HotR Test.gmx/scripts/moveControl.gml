//Move Action controller script
//moveControl(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the move/attack command 
    case 0:
    action = moveControl
    
    movementRange(i.isoTile, i.movement, i.movementBonus)
    
    //Check Line of Sight to all enemies
    if i.rangeAttack = true
    {
        with(obj_character)
        {
            if team != i.team
            {
                if los(40, i.isoTile, isoTile)
                {
                    isoTile.attack = true
                    isoTile.overlay = 3
                }
            }
        }
    }    
    break
    
    //Run 1 to execute
    case 1:
    //Movement
    if cHover.move and cHover.vis != false
    {
        //Set Path Data
        current = cHover
        
        //Create Priority Que
        path = ds_priority_create()
        
        ds_priority_add(path, current, current.g)
        ii = 1
        
        while(current.pathParent != noone)
        {
            ds_priority_add(path, current, current.g)
            current = current.pathParent
        }
        
        //Form Path from que
        do
        {
            current = ds_priority_delete_min(path)
            i.pathArray[ii] = current
            ii++
        }
        until(ds_priority_empty(path))
        
        //Clean Up que
        ds_priority_destroy(path)
        
        //Move and Update Grid
        map[i.isoX+(i.isoZ*mapWidth),i.isoY].occupant = noone
        i.isoX = cHover.isoX
        i.isoY = cHover.isoY
        i.isoZ = cHover.isoZ
        i.isoTile = cHover
        i.pathLength = ii
        i.stm -= cHover.g*.1
        if cHover.overlay = 2{i.stm -= cHover.g*.1}
        cHover.occupant = i
        
        //Vision
        updateVision()
        
        //Update Control and Timer
        global.control.controlled = false
        global.control = noone
        global.nextChar.delay = 4.0/global.nextChar.owner.haste
        initiativeSlotReset()
        mapTimeOn = true
        
        //Start the path running
        with(i)
        {
            actMove(1)
        }
        
        wipeTiles()
    }
    
    //Attack
    if cHover.attack
    {
        //Attack
    }
    
    break
    
    //Run 2 to draw
    case 2:
    
    break
}
