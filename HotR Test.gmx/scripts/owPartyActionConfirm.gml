var i = 0

//Create the Que
with(obj_partyActor)
{
    //Add Action to que  
    global.partyAct[i,0] = o
    global.partyAct[i,1] = inSlot.partyAction
    
    i++
}

global.partyActions = i

//Destroy the party action sheet
with(obj_hudParent)
{
    instance_destroy()
}
instance_destroy()

global.inMenu = 0
global.subTab = -4
global.menuSheet = -4

//Run the Que
eventStart(actionQueResolve,0)


