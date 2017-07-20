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
    nextStep()
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
    portraitSet(c)
    speak(string(c.firstName)+' studies at the library')
    //Replace with the training screen
    global.eventCharacter = c
    c.experience += floor(random(c.cunning)+checkTalent(treeKnowledge,false))/10
    checkLevelUp(c)
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
    portraitSet(c)
    speak(string(c.firstName)+' goes to the market')
    c.fat = max(0,c.fat-4)
    global.eventCharacter = c
       
    //Replace with Market Screen 
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

#define rTavern
var c = argument1

switch(argument0)
{
    case 0: //Figure out char priority for this action
    
    break
    
    case 1: //Resolve the action
    portraitSet(c)
    speak(string(c.firstName)+' goes to Tavern')
    c.fat = max(0,c.fat-4)
    eventVisible = false
    clickStep = false
    
    //Create Hiring screen
    global.eventCharacter = c
    global.hudYMax = 0 
    global.currentPurchase = 0
    
    for(iii = 2+irandom(3)+checkTalent(treeStreetwise,false); iii >= 0; iii--)
    {
        ii = instance_create(330,72+(iii*44),obj_resumeSelect)
        ii.hudY = iii
        ii.character = instance_create(x,y,obj_characterSheet)
        ii.character.ruleSet = cwAdventurer
        global.charSelect = ii.character
        with(ii.character)
        {
            //Character Creation
            createCharacter()
        }
        ii.cost = round((4+random(2))*power(1.5,ii.character.level+ii.character.levelAdj))
        
        global.hudYMax += 1
    }
   
    iv = instance_create(320,180,obj_characterResume)
    iv.event = id
    
    ii = instance_create(430,318,obj_menuConfirm)
    ii.confirm = recruitConfirm
    
    with(obj_resumeSelect)
    {
        resume = other.iv
    }
    break
    
    case 2: //Figure out if the character can even take this action
    
    break
}

#define recruitConfirm
//Add all characters selected

if global.currentPurchase <= global.activeActor.money
{
    loseMoney(global.currentPurchase)
    with(obj_resumeSelect)
    {
        
        if recruit = true
        {
            character.party = global.activeActor
            
            if ds_list_size(global.activeActor.party) < 7
            {
                ds_list_add(global.activeActor.party,character)
            }
            else
            {
                ds_list_add(global.activeActor.reserve,character)
            }
        }
        
        instance_destroy()
    }
    
    with(obj_characterResume)
    {
        instance_destroy()
        
        with(event)
        {
            nextStep()
        }
    }
    
    with(obj_modelVersatile)
    {
        instance_destroy()
    }
    
    with(obj_talHud)
    {
        instance_destroy()
    }
    
    with(obj_menuConfirm)
    {
        instance_destroy()
    }
    
    instance_destroy()
}
#define swapConfirm
//Add all characters selected

if global.currentPurchase <= 7 and global.currentPurchase >= 1
{
    ds_list_clear(global.activeActor.party)
    ds_list_clear(global.activeActor.reserve)
    
    with(obj_resumeSelect)
    {
        if recruit = true
        {
            ds_list_add(global.activeActor.party,character)
        }
        else
        {
            ds_list_add(global.activeActor.reserve,character)
        }
        
        instance_destroy()
    }
    
    with(obj_characterResume)
    {
        instance_destroy()
    }
    
    with(obj_modelVersatile)
    {
        instance_destroy()
    }
    
    with(obj_talHud)
    {
        instance_destroy()
    }
    
    with(obj_menuConfirm)
    {
        instance_destroy()
    }
    
    instance_destroy()
}