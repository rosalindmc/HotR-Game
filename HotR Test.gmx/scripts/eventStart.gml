#define eventStart
//eventStart(id, event)
//eventStart runs a new event

argument0.event = argument1
argument0.eventStep = 0
global.eventActive = true
global.eventActor = global.activeActor
global.eventCharacter = ds_list_find_value(global.activeActor.party,0)

with(argument0)
{
    script_execute(event,eventStep,0)
}

#define eventEnd
instance_destroy()
global.eventActive = false

#define skipTo
with(obj_eventChoice)
{
    instance_destroy()
}

clickStep = false
text = ''
i = 0
eventStep = argument0
script_execute(event,eventStep,0)



#define nextStep
clickStep = false
text = ''
i = 0

eventStep += 1
script_execute(event,eventStep,0)

#define speak
//Draws the text of argument0 in a text box

text = argument0
clickStep = true

#define choice
//Choice(text,skipTo,false?)

ii = instance_create(xstart+105,ystart+5+(i*18),obj_eventChoice)

ii.text = argument0
ii.result = argument1
ii.owner = id
ii.num = i+1

if argument2 = false
{
    ii.colour = c_gray
    ii.alarm[0] = -1
}


i += 1