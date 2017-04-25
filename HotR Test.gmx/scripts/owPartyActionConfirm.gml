//Temp Party Action Confirm

with(obj_partyActor)
{
    //Run Action Script
    script_execute(inSlot.partyAction,1,o)
    //Later Replace with adding these things to some sort of que
}

//Later Run the whole que
//Perhaps clump like actions
//Have an event resolve action that runs through all the qued events

//Destroy the sheet and end turn
scr_inGameMenu()

eventStart(restTempScript,0)
