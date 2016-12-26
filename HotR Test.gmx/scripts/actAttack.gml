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
endTurn(3.0/haste)  //Temp, turn will end after attack resolves when done
break
}
