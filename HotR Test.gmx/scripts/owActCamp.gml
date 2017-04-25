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

ii = instance_create(530,180,obj_partyActionSheet)
ii.text = 'City Actions'

//Create all available activities
iy = 0
owAddButtons(7,'Inn','Inn')
owAddButtons(3,'Library','Library')
owAddButtons(1,'Market','Market')
owAddButtons(1,'Armoury','Armoury')
owAddButtons(1,'Town Hall','Town Hall')

//Create Party
owAddParty()

//Autoplace Actor Icons and set preferences
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