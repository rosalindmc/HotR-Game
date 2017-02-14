#define controlAI
moveControl(0)

//Temp AI
attackRandom()

#define attackRandom
//Script for AI self control, manages the AI array
//controlAI()

//Temporary (Attack a random foe )

var i = global.control

global.target = -4

with(obj_tile)
{
    if meleeAttack = true
    {
        global.target = id
    }
}

with(obj_control)
{
if global.target != -4
{
    for(ii = 0; ii < ds_list_size(global.moveTile); ii ++)
    {
        current = ds_list_find_value(global.moveTile, ii)
        if los(global.control.reach,current,global.target)
        {
            global.attackFromTile = current
        }
    }
    
    //Set Target
    i.target = global.target.occupant
    
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
else
{
    wait(0)
}
}
