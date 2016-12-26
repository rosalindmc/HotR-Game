#define moveControl
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
        //Move and Update Grid
        makeMovePath(cHover)
        i.pathLength = ii
        i.stm -= cHover.g*.1
        if cHover.overlay = 2{i.stm -= cHover.g*.1}
        gridUpdate(i, cHover)
        
        //End Turn
        endTurn(3.0/i.haste)
        
        //Start the Action
        with(i){actMove(1)}
        wipeTiles()
    }
    
    //Ranged Attack
    if cHover.rangedAttack = true and (key_meleeToggle = false or cHover.meleeAttack = false)
    {
        //Temp Fire Projectile (Later add animation)
        fireProjectile(obj_projectile,15)
        //End Turn
        endTurn(3.0/i.haste)//Temp, turn will end after attack resolves when done
    }
    //Melee Attack
    if cHover.meleeAttack = true and (key_meleeToggle = true or cHover.rangedAttack = false) and global.attackFromTile != noone
    {
        //Set Target
        i.target = cHover.occupant
        
        //Charge or Attack?
        if global.attackFromTile.occupant != i
        {   
            //Move and Update Grid
            makeMovePath(global.attackFromTile)
            i.pathLength = ii
            i.stm -= global.attackFromTile.g*.1
            if global.attackFromTile.overlay = 2{i.stm -= global.attackFromTile.g*.1}
            gridUpdate(i, global.attackFromTile)
            
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
        