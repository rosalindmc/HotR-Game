#define owActCamp
switch(argument0)
{
case 0: //Create Camp Menu
global.inMenu = 1
global.menuSheet = 10
global.hudY = 0
global.eventActor = global.activeActor

ii = instance_create(530,180,obj_partyActionSheet)
ii.text = 'Camp Actions'

//Create all available activities
iy = 0
owAddButtons(7,'Rest',rRest)
owAddButtons(3,'Train',rTrain)
if checkTalent(treeSurvival,true) > 0
{
    owAddButtons(3,'Hunt',rHunt)
}
if checkTalent(treeMedicine,true) > 0
{
    owAddButtons(3,'Heal',rHeal)
}
if checkTalent(treePerform,true) > 0
{
    owAddButtons(3,'Perform',rPerform)
}

//Create Party and Autoplace them
owAddParty()

global.hudYMax = iy
break

case 1:
//Resolve Actions

//End turn
nextTurn()
break
}


#define owActVisitCity
switch(argument0)
{
case 0: //Create Camp Menu
global.inMenu = 1
global.menuSheet = 10
global.hudY = 0
global.eventActor = global.activeActor

ii = instance_create(530,180,obj_partyActionSheet)
ii.text = 'City Actions'

//Create all available activities
iy = 0
owAddButtons(7,'Inn',rInn)
owAddButtons(3,'Library',rLibrary)
owAddButtons(1,'Market',rMarket)    
owAddButtons(1,'Tavern',rTavern)

//Create Party
owAddParty()

//Autoplace Actor Icons and set preferences

global.hudYMax = iy
break

case 1:
//Resolve Actions

//End turn
nextTurn()
break
}

#define owActSwapTeam
switch(argument0)
{
case 0: //Create Swap Team Menu
global.hudYMax = 0 
global.currentPurchase = 0

for(iii = ds_list_size(global.activeActor.party)-1; iii >= 0; iii--)
{
    ii = instance_create(330,72+(iii*44),obj_resumeSelect)
    ii.hudY = iii
    ii.swap = true
    ii.recruit = true
    ii.character = ds_list_find_value(global.activeActor.party,iii) 
    global.charSelect = ii.character
    global.hudYMax += 1
    global.currentPurchase += 1
}

for(iii = ds_list_size(global.activeActor.reserve)-1; iii >= 0; iii--)
{
    ii = instance_create(330,72+(global.hudYMax*44),obj_resumeSelect)
    ii.hudY = global.hudYMax
    ii.swap = true
    ii.character = ds_list_find_value(global.activeActor.reserve,iii) 
    global.charSelect = ii.character    
    global.hudYMax += 1
}

iv = instance_create(320,180,obj_characterResume)
iv.swap = true

ii = instance_create(430,318,obj_menuConfirm)
ii.confirm = swapConfirm

with(obj_resumeSelect)
{
    resume = other.iv
}

break

case 1:
//Resolve Actions

//End turn
nextTurn()
break
}

#define owAddButtons
ix = 0

ii = instance_create(520,75+(iy*22),obj_menuDivider)
ii.text = argument1
ii.hudY = iy
iy += 1

repeat(argument0)
{
    ii = instance_create(450+(ix*22),75+(iy*22),obj_partySlot)
    ii.partyAction = argument2
    ii.hudY = iy
    ix += 1
}

iy += 1

#define owAddParty
i = 0

repeat(ds_list_size(global.activeActor.party))
{
    ii = instance_create(0,0,obj_partyActor)
    ii.o = ds_list_find_value(global.activeActor.party,i)
    i += 1
    
    r = 0
    with(obj_partySlot)
    {
        r = random(100)     //Replace with a smart weighting system
        if r > other.r and occupant = -4
        {
            other.r = r
            other.ii.inSlot = id
        }
    }    
    
    ii.inSlot.occupant = ii
    ii.x = ii.inSlot.x
    ii.y = ii.inSlot.y
    ii.hudY = ii.inSlot.hudY
}