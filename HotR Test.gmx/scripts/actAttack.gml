#define actAttack
//Move Script
//actAttack(howtouse)
//0 = By Frame, 1 = Start Melee

switch(argument0)
{
case 1:
//Stop Leg Movement
startAnimation(0,animAttack)

//Facing
facing = round(point_direction(x,y,target.x,target.y)/45)*45
        
//Begin Attack Animation    
melee()

actionString = "Attacking"
action = actAttack
        
//End Turn
s = (3-(dualWield*.5))/((wepSpeed[atkHand]))
endTurn(s/haste)  //Temp, turn will end after attack resolves when done

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

break
}

#define dualStrike
target = readiedTarget

i = 0
global.ii = false     

repeat(ds_list_size(isoTile.adjacent))
{
    with(ds_list_find_value(isoTile.adjacent,i))
    {
        if other.target = occupant
        {
            global.ii = true
        }
    }
    i += 1
}

if global.ii = true
{
    actAttack(1)
}
else
{
    script_execute(controlScript)
}

