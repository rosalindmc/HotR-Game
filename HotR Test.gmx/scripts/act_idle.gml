//Idle Script
//act_idle(howtouse)
//0 = By Frame, 1 = Start

switch(argument0)
{
case 0:

break

case 1:
actionString = "Idle"
action = act_idle

//Temp establish animation
anim_start(0,anim_idle)
break
}
