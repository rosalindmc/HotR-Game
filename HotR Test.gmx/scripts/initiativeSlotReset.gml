#define initiativeSlotReset
global.initiative = ds_priority_create()

//Put all initiative markers in the list
with(obj_initiativeSlot)
{
    if testSlot = false
    {
        ds_priority_add(global.initiative, id, delay)   
    } 
}

//Assign each
i = 0
while(!ds_priority_empty(global.initiative))
{
    ii = ds_priority_delete_min(global.initiative)
    ii.order = i
    
    if i = 0
    {
        global.nextChar = ii
    }
    
    i++
}

//Clear list to prevent memory leak    
ds_priority_destroy(global.initiative)    

//Set positions
with(obj_initiativeSlot)
{
    if testSlot = false
    {
        if order = 0
        {
            x = 30
            y = 26
            size = 3
            vis = true
        }
        else
        {
            x = 36+(25*order)
            y = 20
            size = 2
            vis = true
        }
    }
    else
    {
        vis = false
    }
}

#define initiativeSlotAnticipate
global.initiative = ds_priority_create()

//Put all initiative markers in the list
with(obj_initiativeSlot)
{
    if global.nextChar != id
    {
        ds_priority_add(global.initiative, id, delay+delayAdd)    
    }
}

//Assign each
i = 1
while(!ds_priority_empty(global.initiative))
{
    ii = ds_priority_delete_min(global.initiative)
    ii.order = i
    
    i++
}

//Clear list to prevent memory leak    
ds_priority_destroy(global.initiative)    

//Set positions
with(obj_initiativeSlot)
{
    if global.nextChar != id
    {
        x = 36+(25*order)
        y = 20
        size = 2
        vis = 2
    }
    else
    {
        vis = true
    }
}
