#define campEvents

#define event1
if argument1 = 0
{
    switch(argument0)
    {
    case 0: speak('Hello World') break
    case 1: speak('Quick Brown Fox and Such and Such and Such and These and more than These, digging deeper') break
    case 2: speak('It is dangerous to go alone, take this') break
    case 3: 
    choice('Red Pill', 6) 
    choice('Blue Pill', 4) 
    break
    case 4: speak('You got the Blue Pill') createNotification('Blue Pill',ico_roundShield,3) break
    case 5: eventEnd() break
    case 6: speak('You got the Red Pill') createNotification('Red Pill',ico_roundShield,4) break
    case 7: eventEnd() break
    }
}
else
{
    //When an AI runs this script, it should just skip to the end results
}
