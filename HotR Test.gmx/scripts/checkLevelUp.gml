#define checkLevelUp
char = argument0

while(char.experience >= char.expToLevel)
{
    char.level += 1
    char.levelPending += 1
    
    if char.party.playerControl = true
    {    
        createNotification(string(char.firstName)+' is level '+string(char.level),ico_experience,2)
    }
    else
    {
        levelControl(char,false)
    }
    
    char.experience -= char.expToLevel

    xpToLevel(char)
}

#define xpToLevel
char = argument0
if char.level+char.levelAdj < 28
{
    switch(char.level+char.levelAdj)
    {
    case 0: char.expToLevel = 5 break  
    case 1: char.expToLevel = 5 break  
    case 2: char.expToLevel = 10 break  
    case 3: char.expToLevel = 15 break 
    case 4: char.expToLevel = 20 break 
    case 5: char.expToLevel = 30 break 
    case 6: char.expToLevel = 40 break 
    case 7: char.expToLevel = 55 break  
    case 8: char.expToLevel = 75 break 
    case 9: char.expToLevel = 100 break 
    case 10: char.expToLevel = 130 break 
    case 11: char.expToLevel = 170 break 
    case 12: char.expToLevel = 250 break  
    case 13: char.expToLevel = 350 break 
    case 14: char.expToLevel = 500 break 
    case 15: char.expToLevel = 750 break 
    case 16: char.expToLevel = 1000 break 
    case 17: char.expToLevel = 1500 break  
    case 18: char.expToLevel = 2000 break 
    case 19: char.expToLevel = 3000 break 
    case 20: char.expToLevel = 5000 break 
    case 21: char.expToLevel = 10000 break 
    case 22: char.expToLevel = 15000 break 
    case 23: char.expToLevel = 25000 break 
    case 24: char.expToLevel = 35000 break 
    case 25: char.expToLevel = 50000 break 
    case 26: char.expToLevel = 100000 break 
    case 27: char.expToLevel = 250000 break 
    }
}
else
{
    char.expToLevel *= 2
}