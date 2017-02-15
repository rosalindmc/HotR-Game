#define controlAI
with(global.controlObject)
{
    moveControl(0)
    
    //Temp AI
    attackRandom()
}



#define attackRandom
//Script for AI self control, manages the AI array
//controlAI()

//Temporary (Attack a random foe )

var i = global.control

global.target = -4

if (i.owner.invSlot[3,0] != emptySlot)
{
    var enemyAdj = false
    for(var j = 0; j < ds_list_size(i.isoTile.adjacent); j++)
    {
        if(ds_list_find_value(i.isoTile.adjacent, j).occupant != noone)
        {
            if(ds_list_find_value(i.isoTile.adjacent, j).occupant.team != i.team)
            {
                enemyAdj = true
            }
        }    
    }
    
    if (!enemyAdj)
    {
        rangedAttackAI()
        exit
    }
    else if(i.rangeAttack)
    {
        weaponSwitch(0)
        exit
    }
}

global.aggro = -1000

with(obj_tile)
{
    if meleeAttack = true
    {
        if random(1)+(occupant.bold*5)-occupant.initSlot.delay-((occupant.life/occupant.lifeMax)*3)-(max(occupant.arm-i.wepPen[i.atkHand],0)*.25) > global.aggro
        {
            global.target = id
            global.aggro = random(1)+(occupant.bold*5)-occupant.initSlot.delay-((occupant.life/occupant.lifeMax)*3)-(max(occupant.arm-i.wepPen[i.atkHand],0)*.25)
        }
    }
}

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
    march()
}


#define march
//March forewards to a tile within walking range

var i = global.control
var closest = 10000
global.target = i.isoTile

with (obj_tile)
{
    if (overlay = 2)
    {
        with (obj_character)
        {
            if (team != i.team)
            {
                if (checkRange(id,other) < closest)
                {
                    if (other.occupant = noone)
                    {
                        closest = checkRange(id,other)
                        global.target = other
                    }
                } 
            }
        }        
    }
}


//Move and Update Grid9
makeMovePath(global.target)
i.pathLength = ii
i.stm -= global.target.g*.1*i.movStaminaMult*(1+(i.enc*.01))
if global.target.overlay = 2{i.stm -= global.target.g*.1*i.movStaminaMult*(1+(i.enc*.01))}
gridUpdate(i, global.target)

with(i){triggerOnMove()}

with(i){actMove(1)}


//End Turn
endTurn(2.0/(i.haste+i.movHaste))

wipeTiles()



#define rangedAttackAI
//check all enemys for in range
//check for units that might be hit
//fire a projectile
//march

var i = global.control
var closestTarget = 1000

if (!i.rangeAttack)
{
    weaponSwitch(0)
}
else
{
    with(obj_character)
    {
        if (team != i.team)
        {
            if (checkRange(id,i) < i.wepRRange && checkRange(id,i)< closestTarget)
            {
                closestTarget = checkRange(id,i)
                var targetable = true
                for (var ii = 0; ii < ds_list_size(i.isoTile.adjacent); ii++)
                {    
                    if (checkRange(ds_list_find_value(i.isoTile.adjacent, ii),id) < closestTarget)
                    {
                        if (ds_list_find_value(i.isoTile.adjacent, ii).occupant != noone)
                        {
                            if (ds_list_find_value(i.isoTile.adjacent, ii).occupant.team = i.team)
                            {
                                targetable = false
                            }
                        }
                    }
                    
                    if (checkRange(ds_list_find_value(isoTile.adjacent, ii),i) < closestTarget)
                    {
                         if (ds_list_find_value(isoTile.adjacent, ii).occupant != noone)
                         {
                            if (ds_list_find_value(isoTile.adjacent, ii).occupant.team = i.team)
                            {
                                targetable = false
                            }
                        }    
                    }
                }
                if (targetable = true)
                {
                    global.target = id
                }     
            }    
        }
    }
    if (global.target != -4 && global.target.isoTile.rangedAttack = true)
    {
        i.target = global.target    
    
        with(i){ranged()}
        s = 3.0/((i.wepRSpeed[i.atkHand]))
        endTurn(s/(i.haste+i.atkHaste))//Temp, turn will end after attack resolves when done
    }
    else
    {
        march()
    }
}

wipeTiles()
