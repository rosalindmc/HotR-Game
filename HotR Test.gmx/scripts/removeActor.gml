//Re-adjust the list to maintain the current order of actors
i = actorNumber
repeat(global.actorCount-actorNumber)
{
global.actorList[i] = global.actorList[i+1]
global.actorList[i+1].actorNumber -= 1
i += 1
}

global.actorCount -= 1

