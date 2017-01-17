#define worldControlInitialize
global.actorList[0] = -4
global.actorCount = 0
global.activeActorNum = 0
global.activeActor = noone

//Time
global.timeOfDay = 1
global.week = 1
global.month = 1
global.year = 615

#define nextTurn
global.activeActorNum += 1

if global.activeActorNum > global.actorCount
{
    //Time Passes
    timePasses()
    
    global.activeActorNum = 1
}

global.activeActor = global.actorList[global.activeActorNum]

if global.activeActor.playerControl = true
{
    owMovePath() 
}
else
{
    //Replace with AI script later, until then jsut pass
    nextTurn()
}

#define timePasses
global.timeOfDay += 1

if global.timeOfDay = 4
{
    global.timeOfDay = 1
}

switch(global.timeOfDay)
{
case 1: global.shader = shd_day break
case 2: global.shader = shd_evening break
case 3: global.shader = shd_night break
}

global.week += 1

if global.week = 5
{
    global.week = 1
    global.month += 1
    
    if global.month = 13
    {
        global.month = 1
        global.year += 1
    }
}

#define owMovePath
with(obj_travelNode)
{
    image_index = 1
}

with(global.activeActor.node)
{
    i = 0
    repeat(ds_list_size(adjacent))
    {
        ii = ds_list_find_value(adjacent,i)
        ii.image_index = 0
        i += 1
    }
}