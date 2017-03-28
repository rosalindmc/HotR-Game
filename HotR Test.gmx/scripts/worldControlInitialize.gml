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

//Colour
global.itemColour[0] = make_colour_rgb(161,126,53)
global.itemColour[1] = c_white
global.itemColour[2] = make_colour_rgb(95,235,80)
global.itemColour[3] = make_colour_rgb(164,235,245)
global.itemColour[4] = make_colour_rgb(245,164,230)


#define nextTurn
global.turnOver = false
global.activeActorNum += 1

with(obj_notification)
{
    instance_destroy()
}

if global.activeActorNum > global.actorCount
{
    //Time Passes
    timePasses()
    
    global.activeActorNum = 1
}

global.activeActor = global.actorList[global.activeActorNum]

if global.activeActor.playerControl = true
{
    with(obj_overworldControl)
    {
        obj_camera.x = global.activeActor.x
        obj_camera.y = global.activeActor.y
        view_xview = median(obj_camera.x-(view_wview/2),0,room_width-view_wview)
        view_yview = median(obj_camera.y-(view_hview/2),0,room_height-view_hview)
        worldScrollVis()
    }
    owMovePath() 
}
else
{
    //Replace with AI script later, until then just pass
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