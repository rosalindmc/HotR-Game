#define restActions


#define rRest
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    c.fat = max(0,c.fat-4)
    c.wounds = max(0,c.wounds-1)
    createNotification(string(c.firstName)+' rests',ico_wait,0)
    nextStep()
    break
    
    case 2: //Figure out if the character can even take this action
    
    break
}

#define rTrain
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    portraitSet(c)
    speak(string(c.firstName)+' trains')
    //Replace with the training screen
    c.experience += floor(random(c.cunning))/10
    checkLevelUp(c)
    break
    
    case 2: //Figure out if the character can even take this action
    
    break
}

#define rHunt
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    portraitSet(c)
    speak(string(c.firstName)+' hunts')
    global.eventCharacter = c
    c.fat = max(0,c.fat-checkTalent(treeSurvival,false))
    c.wounds = max(0,c.wounds-checkTalent(treeSurvival,false))
    break
    
    case 2: //Figure out if the character can even take this action
    
    break
}

#define rHeal
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    portraitSet(c)
    speak(string(c.firstName)+' heals')
    //Replace with the healing screen
    c.fat = max(0,c.fat-2)
    c.wounds = max(0,c.wounds-checkTalent(treeMedicine,true))
    break
    
    case 2: //Figure out if the character can even take this action    
    break
}

#define rPerform
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    portraitSet(c)
    speak(string(c.firstName)+' performs')
    c.fat = max(0,c.fat-checkTalent(treePerform,false))
    c.resolve = min(c.resolve+checkTalent(treePerform,false),10)
    break
    
    case 2: //Figure out if the character can even take this action    
    break
}