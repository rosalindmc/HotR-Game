#define actAttack
//Move Script
//actAttack(howtouse)
//0 = By Frame, 1 = Start Melee

switch(argument0)
{
case 1:
//Facing
facing = round(point_direction(x,y,target.x,target.y)/45)*45
cFacing = facing
        
//Begin Attack Animation    
melee()

actionString = "Attacking"
action = actAttack
        
//End Turn
s = (3-(dualWield*.5))/((wepSpeed[atkHand]))
endTurn(s/(haste+atkHaste))
break
}

#define dualStrike
target = readiedTarget

i = 0
global.ii = false     

if instance_exists(target)
{
    if los(reach,target.sightTile,sightTile)
    {
        if target.active = true
        {
            global.ii = true
        }
    }
}

if global.ii = true
{
    actAttack(1)
    readiedAction = false
}
else
{
    atkHand = 1
    script_execute(controlScript)
    readiedAction = false
}
#define handSwitch
if atkHand = 1 and dualWield = true
{
    atkHand = 2
    readiedAction = dualStrike
    readiedTarget = target
}
else
{
    atkHand = 1
}