//Move Script
//actAttack(howtouse)
//0 = By Frame, 1 = Start Melee

switch(argument0)
{
case 1:
//Stop Leg Movement
startAnimation(0,animIdle)

//Facing
facing = round(point_direction(x,y,target.x,target.y)/45)*45
        
//Begin Attack Animation    
melee()

actionString = "Attacking"
action = actAttack
break
}
