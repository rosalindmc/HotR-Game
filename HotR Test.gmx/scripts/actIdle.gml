//Idle Script
//actIdle(howtouse)
//0 = By Frame, 1 = Start

switch(argument0)
{
case 0:

break

case 1:
actionString = "Idle"
action = actIdle

//Temp establish animation
startAnimation(0,animIdle)
break
}
