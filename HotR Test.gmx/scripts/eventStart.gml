#define eventStart
//eventStart(id, event)
//eventStart runs a new event

argument0.event = argument1
argument0.eventStep = 0
global.eventActive = true

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
ii = instance_create(xstart+105,ystart+5+(i*16),obj_eventChoice)

ii.text = argument0
ii.result = argument1
ii.owner = id
ii.num = i+1

i += 1
