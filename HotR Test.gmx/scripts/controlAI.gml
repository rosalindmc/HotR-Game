#define controlAI
with(global.controlObject)
{
    zoneOfControl()
    createActionBar()
    
    aiList = ds_priority_create()
    global.aiDone = false
    
    with(obj_actionButton)
    {
        if selectable = true and cooldown = 0
        {
            ds_priority_add(other.aiList,action,script_execute(action,5))
        }
    }
    
    while(!ds_priority_empty(aiList) and global.aiDone = false)
    {
        script_execute(ds_priority_delete_max(aiList),3)   
    }
    ds_priority_destroy(aiList)
}



#define attackRandom
//Script for AI use of Attack Move
//controlAI()

//Temporary (Attack a random foe )

var i = global.control

moveControl(0)

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
    if meleeAttack = true and instance_exists(occupant)
    {
        if random(1)+(occupant.bold*5)-occupant.suppression-((occupant.life/occupant.lifeMax)*3)+(occupant.active*5) > global.aggro
        {
            global.target = id
            global.aggro = random(1)+(occupant.bold*5)-occupant.suppression-((occupant.life/occupant.lifeMax)*3)+(occupant.active*5)
        }
    }
}

if global.target != -4
{
    for(ii = 0; ii < ds_list_size(global.moveTile); ii ++)
    {
        current = ds_list_find_value(global.moveTile, ii)
        if los(global.control.reach,current.sightTile,global.target.sightTile)
        {
            global.attackFromTile = current
        }
    }
    
    //Set Target
    i.target = global.target.occupant
    
    //Charge or Attack?
    if global.attackFromTile.occupant != i
    {   
        //Add a half movement to delay
        global.nextChar.delay += min(2.0,global.target.g)/(i.haste+i.movHaste)
    
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
else
{
    march()
}


#define march
//OBSOLETE

//March forewards to a tile within walking range

var i = global.control
var closest = 10000
global.target = i.isoTile


if i.movement >= 1
{

with (obj_tile)
{
    if (overlay = 2)
    {
        with(obj_character)
        {
            if (team != i.team) and active = true
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

if global.target != i.isoTile
{
    moveTo(global.target)
    endTurn(min(3.0,global.target.g)/(i.haste+i.movHaste))
}
else
{
    wait(0)
}
}
else
{
wait(0)
}


#define rangedAttackAI
//OBSOLETE

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
        if team != i.team and dead = false
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

#define rangedAggro
i = global.control

aggro = 0

//Prioritize Low Dodge
aggro = 3

//Randomize
aggro += choose(1,-1)*random(1)

//Prioritize Bold
aggro += occupant.bold
if occupant.bold = 1
{
    aggro += 1
}

//Prioritize Suppression
if occupant.suppression <= 1
{
    aggro += 1
}

if occupant.suppression = 0
{
    aggro += 1
}

//Prioritize Low Life
if occupant.life < 4
{
    aggro += 3
}

//Prioritize Downed Foes
if occupant.active = false
{
    aggro += 5*i.aiDownMult
}

//Prioritize Fatigued Foes
if occupant.stm < occupant.stmMax*.60
{
    aggro += (5-(occupant.stm/occupant.stmMax))*i.aiFatigueMult
}

//Prioritize Wounded Foes
if occupant.wounds > 0
{
    aggro += occupant.wounds*i.aiWoundMult
}

#define meleeAggro
i = global.control

aggro = 0

//Prioritize Low Dodge
aggro = 3

//Randomize
aggro += choose(1,-1)*random(1)

//Prioritize Bold
aggro += occupant.bold
if occupant.bold = 1
{
    aggro += 1
}

//Prioritize Suppression
if occupant.suppression <= 1
{
    aggro += 1
}

if occupant.suppression = 0
{
    aggro += 1
}

//Prioritize Low Life
if occupant.life < 4
{
    aggro += 3
}

//Prioritize Downed Foes
if occupant.active = false
{
    aggro += 5*i.aiDownMult
}

//Prioritize Fatigued Foes
if occupant.stm < occupant.stmMax*.60
{
    aggro += (5-(occupant.stm/occupant.stmMax))*i.aiFatigueMult
}

//Prioritize Wounded Foes
if occupant.wounds > 0
{
    aggro += occupant.wounds*i.aiWoundMult
}