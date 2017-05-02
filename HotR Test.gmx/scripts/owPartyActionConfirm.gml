//Temp Party Action Confirm
eventStart(restTempScript,0)

with(obj_partyActor)
{
    //Run Action Scripts
    with(obj_event)
    {
        script_execute(other.inSlot.partyAction,1,other.o)
    }
    //Later Replace with adding these things to some sort of que
}

//Later Run the whole que
//Perhaps clump like actions
//Have an event resolve action that runs through all the qued events

//Destroy the sheet and end turn
scr_inGameMenu()

