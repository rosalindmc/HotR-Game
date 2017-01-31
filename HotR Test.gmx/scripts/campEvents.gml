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
    choice('Great Axe', 4) 
    choice('Great Sword', 6) 
    break
    case 4: speak('You got the Great Axe') gainItem(greatSword,4,emptyMutator,emptyMutator,emptyMutator) break
    case 5: eventEnd() break
    case 6: speak('You got the Great Sword') gainItem(greatAxe,4,emptyMutator,emptyMutator,emptyMutator) gainMoney(100) break
    case 7: eventEnd() break
    }
}
else
{
    //When an AI runs this script, it should just skip to the end results
}
