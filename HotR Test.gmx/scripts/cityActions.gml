#define cityActions


#define rInn
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    c.fat = max(0,c.fat-8)
    c.wounds = max(0,c.wounds-1)
    createNotification(string(c.firstName)+' rests at inn',ico_wait,0)
    break
    
    case 2: //Figure out if the character can even take this action
    
    break
}

#define rLibrary
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    //Replace with ability to train classes, spells and basic skills
    global.eventCharacter = c
    c.experience += floor(random(c.cunning)+checkTalent(treeKnowledge,false))/10
    checkLevelUp(c)
    createNotification(string(c.firstName)+' studies',ico_experience,0)
    break
    
    case 2: //Figure out if the character can even take this action
    
    break
}

#define rMarket
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    c.fat = max(0,c.fat-4)
    global.eventCharacter = c
    createNotification(string(c.firstName)+' goes to the market',ico_money,1)
    
    loseMoney(10)
    repeat(2+checkTalent(treeStreetwise,false))
    {   
        item = itemList()
        iType = typeRend
        script_execute(item,5)
        tier = irandom(4)
        mat1 = script_execute(script_execute(item,3),tier,iType)
        mat2 = script_execute(script_execute(item,4),irandom(tier),iType)
        gainItem(item,tier,emptyMutator,emptyMutator,emptyMutator,mat1,mat2,-4)
    }
    break
    
    case 2: //Figure out if the character can even take this action
    
    break
}

#define rTownhall
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    c.fat = max(0,c.fat-4)
    createNotification(string(c.firstName)+' goes to the town hall',ico_money,1)
    gainPartyMember(cwAdventurer)
    loseMoney(10)
    
    break
    
    case 2: //Figure out if the character can even take this action
    
    break
}