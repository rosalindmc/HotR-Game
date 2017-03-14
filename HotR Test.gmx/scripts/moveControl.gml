#define moveControl
//Move Action controller script
//moveControl(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the move/attack command 
    case 0:
    action = moveControl
    global.castMouse = 0
    
    global.moveTile = ds_list_create()
    ignoreZoC = false
    movementRange(i.isoTile, i.movement, i.movementBonus)
    
    //Check Line of Sight to all enemies
    if i.rangeAttack = true
    {
        with(obj_character)
        {
            if team != i.team and active = true
            {
                if los(40, i.sightTile, sightTile)
                {
                    isoTile.rangedAttack = true
                    isoTile.overlay = 3
                }
            }
        }
    }
    meleeAttackRange(i)
    break
    
    //Run 1 to execute
    case 1:
    //Movement
    if cHover.move and cHover.vis != false
    {
        moveTo(cHover)
        endTurn(min(3.0,cHover.g)/(i.haste+i.movHaste))
    }
    
    //Ranged Attack
    if cHover.rangedAttack = true and (key_meleeToggle = false or cHover.meleeAttack = false)
    {
        //Set Target
        i.target = cHover.occupant
    
        //Ranged Attack
        with(i){ranged()}
        //End Turn
        s = 3.0/((i.wepRSpeed[i.atkHand]))
        endTurn(s/(i.haste+i.atkHaste))
    }
    //Melee Attack
    if cHover.meleeAttack = true and (key_meleeToggle = true or cHover.rangedAttack = false) and global.attackFromTile != noone
    {
        //Set Target
        i.target = cHover.occupant
        
        //Charge or Attack?
        if global.attackFromTile.occupant != i
        {   
            //Add a half movement to delay
            global.nextChar.delay += min(2.0,cHover.g)/(i.haste+i.movHaste)
        
            //Move and Update Grid
            moveTo(global.attackFromTile)
            //Start the Action
            with(i){actCharge(1)}
        }
        else
        {
            //Start the Action
            with(i){actAttack(1)}
        }
        
        wipeTiles()
    }
    
    break
    
    //Run 2 to draw
    case 2:
    global.pathDraw = true
    tooltipTitle = 'Attack/Move'
    abilityTT = 'Action#Move and/or Attack'
    abilityTTLength = 1
    
    if instance_exists(cHover)
    {   
        //Movement Tooltip
        if cHover.move and cHover.vis != false
        {
            //Move
            suppressionPreview(false)
            global.testSlot.delayAdd = (min(3.0,cHover.g)/(i.haste+i.movHaste))
            initiativeSlotAnticipate()
        }
        //Ranged Attack Tooltip
        else if cHover.rangedAttack = true and (key_meleeToggle = false or cHover.meleeAttack = false)
        {
            attacker = i
            target = cHover.occupant
            
            timeReset()
            attackPreview(false)
            global.testSlot.delayAdd = i.s/(i.haste+i.atkHaste)
            initiativeSlotAnticipate()
        }
        //Melee Attack Tooltip
        else if cHover.meleeAttack = true and (key_meleeToggle = true or cHover.rangedAttack = false) and global.attackFromTile != noone
        {   
            attacker = i
            target = cHover.occupant
            suppressionPreview(true)
            attackPreview(true)
            
            if global.attackFromTile.occupant != i
            {
                global.testSlot.delayAdd = i.s/(i.haste+i.atkHaste)
            }
            else
            {
                global.testSlot.delayAdd = (i.s/(i.haste+i.atkHaste))+(min(2.0,cHover.g)/(i.haste+i.movHaste))
            }   
            initiativeSlotAnticipate()
        }
        else
        {
            initiativeSlotReset()
        }
    }
    else
    {
        initiativeSlotReset()
    }
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    break
}

#define gridUpdate
//Update a grid to reflect a moved actor
//gridUpdate(actor, destination)

act = argument0
dest = argument1

//Clear Previous Tile (Update for large)
map[act.isoX+(act.isoZ*mapWidth),act.isoY].occupant = noone

//Update Coordinates
act.isoX = dest.isoX
act.isoY = dest.isoY
act.isoZ = dest.isoZ
act.isoTile = dest
act.sightTile = obj_control.map[act.isoX+(obj_control.mapWidth*(act.isoZ+1)),act.isoY]

//Tell the new tile its occupant (Update for large)
dest.occupant = act

//Update Vision to new position (add player qualifier in a moment)
updateVision()

#define makeMovePath
//Make the path a moving actor follows.
//will be important for other control scrips and may need editing
//makeMovePath()

//Set Path Data
current = argument0

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
    global.control.pathArray[ii] = current
    ii++
}
until(ds_priority_empty(path))

//Clean Up que
ds_priority_destroy(path)
        
#define moveTo
var i = global.control
var d = argument0


    //Move and Update Grid
    makeMovePath(d)
    i.pathLength = ii
    spendStamina(i,d.g*.03*i.movStaminaMult)
    if d.overlay = 2{spendStamina(i,d.g*.07*i.movStaminaMult)}
    
    gridUpdate(i, d)
    with(i){triggerOnMove()}
    
    //Start the Action
    with(i){actMove(1)}