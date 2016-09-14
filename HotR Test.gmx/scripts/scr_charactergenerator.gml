//Character stat creation script
//scr_charactergenerator()
//Generates random character stats

var i = 1
var randDice = 13 + irandom(2) + irandom(2)
var mgtCap = 10 
var grcCap = 10
var cunCap = 10 
var wilCap = 10
var felCap = 10

//Race Adjust
switch(race)
{
    case "High Elf":
    randDice += 2
    break
    
    case "Irunian Human":
    randDice += 1
    cunning += 1
    
    cunCap = 11
    break
    
    case "Northern Human":
    will += 2
    
    wilCap = 12
    break
    
    case "Dwarf":
    might += 3
    will += 3
    grace -= 2
    
    mgtCap = 13
    grcCap = 8
    wilCap = 13
    
    movement -= 1
    break
    
    case "Halfling":
    grace += 2
    cunning += 1
    will += 1
    fellowship += 1
    might -= 2
    
    mgtCap = 8
    grcCap = 12
    cunCap = 11
    wilCap = 11
    felCap = 11
    
    movement -= .5
    break
    
    case "Orc":
    might += 4
    grace -= 1
    cunning -= 1
    will -= 1
    fellowship -= 1
    
    mgtCap = 14
    break
    
    case "Tiefling":
    randDice += 2
    break
}

//Randomize Stats
while (i <= randDice) 
{
    switch (irandom(4))
    {
        case 0: might++
        break
        case 1: grace++
        break
        case 2: cunning++
        break
        case 3: will++
        break
        case 4: fellowship++
        break
    }
    i++
}

var ii = 0

if (might > mgtCap)
{
    ii += might-mgtCap
    might = mgtCap
}
if (grace > grcCap)
{
    ii += grace-grcCap
    grace = grcCap
}
if (will > wilCap)
{
    ii += will-wilCap
    will = wilCap
}
if (cunning > cunCap)
{
    ii += cunning-cunCap
    cunning = cunCap
}
if (fellowship > felCap)
{
    ii += fellowship-felCap
    fellowship = felCap
}

i = 1
while (i <= ii) 
{
    switch (irandom(4))
    {
        case 0: might++
        break
        case 1: grace++
        break
        case 2: cunning++
        break
        case 3: will++
        break
        case 4: fellowship++
        break
    }
    i++
}
