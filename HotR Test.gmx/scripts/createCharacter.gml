#define createCharacter
//Character Creator Script
script_execute(ruleSet)

ii = instance_create(x,y,obj_model)
ii.owner = id
with(ii)
{
    importCharacter(owner)
    equipOwner(owner)
    instance_destroy()
}

#define raceGen
script_execute(argument0,0)

#define attributeGen
//Character stat creation script
//scr_charactergenerator()
//Generates random character stats

var i = 1
randDice = 13 + irandom(2) + irandom(2)
mgtCap = 10 
grcCap = 10
cunCap = 10 
wilCap = 10
felCap = 10
raceMove = 0

might = 5
grace = 5
cunning = 5
will = 5
fellowship = 5

//Race Adjust
script_execute(race,2)

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

#define classGen
script_execute(argument0)

#define detailGen
if firstName = -4
{
firstName = script_execute(argument0,gender)
}
lastName = script_execute(race,1)
#define smallRaceDetails
switch(size)
{
    //Small characters
    case 1:
    hipsImage = 0
    bodyImage = 0
    bodyAdjust = choose(0,0,0,-1)
    bodyOffset = choose(4,5)
    break
    
    //Medium characters
    case 2:
    hipsImage = 2
    bodyImage = choose(0,2)
    bodyAdjust = choose(0,0,0,1,1,-1)
    bodyOffset = choose(4,5)
    break
    
    //Medium characters
    case 3:
    hipsImage = 4
    bodyImage = choose(0,2)
    bodyAdjust = choose(0,0,0,1,1,-1)
    bodyOffset = choose(4,5)
    break
}

switch(bodyImage)
{
    case 0: //Small Body
    shldrOffset[1] = 3
    shldrOffset[2] = 2
    shldrAdjust = 0
    headOffset = choose(4,5)
    headAdjust = choose(0,1,2)  
    break
    
    case 2: //Medium Body
    shldrOffset[1] = 4
    shldrOffset[2] = 3
    shldrAdjust = 1
    bodyOffset += 1
    headOffset = choose(5,6) 
    headAdjust = choose(1,2)   
    break
}

height = hipsOffset+bodyOffset+headOffset+3

#define mediumRaceDetails
switch(size)
{
    //Small characters
    case 1:
    hipsImage = 0
    bodyImage = 0
    bodyAdjust = -1
    bodyOffset = 6
    chstAdjust = 0
    break
    
    //Medium characters
    case 2:
    hipsImage = 2
    bodyImage = choose(0,2)
    bodyAdjust = 0
    bodyOffset = choose(6,6,6,7)
    chstAdjust = 1
    break
    
    //Medium characters
    case 3:
    hipsImage = 4
    bodyImage = choose(2,4)
    bodyAdjust = -1
    bodyOffset = choose(6,6,6,7)
    break
    
    //Large characters
    case 4:
    hipsImage = 6
    bodyImage = choose(2,4)
    legOffset[2] = 4
    bodyAdjust = -1
    bodyOffset = choose(6,6,6,6,6,7)
    skrtSize = 1
    break
}

switch(bodyImage)
{
    case 0: //Small Body
    shldrOffset[1] = 4
    shldrOffset[2] = 3
    shldrAdjust = 0
    chstImage = choose(1,2)
    if chstImage = 2 {bodyAdjust = -1}
    chstAdjust += 1+bodyAdjust
    if chstImage = 1 {chstAdjust = 1}
    headAdjust = 1
    break
    
    case 2: //Medium Body
    shldrOffset[1] = 5
    shldrOffset[2] = 4
    shldrAdjust = 1
    chstImage = 3
    chstOffset = 1
    chstAdjust = 1
    headOffset = 7
    headAdjust = 1   
    break
    
    case 4: //Big Body
    shldrOffset[1] = 5
    shldrOffset[2] = 5
    shldrAdjust = 1
    chstImage = 3
    chstAdjust = 1
    headOffset = 7
    headAdjust = 0
    break
}

//Male chest exception
if gender = masc
{
    chstImage = 0
}

height = hipsOffset+bodyOffset+headOffset+5

#define largeRaceDetails
switch(size)
{
    //Small characters
    case 1:
    hipsImage = 0
    bodyImage = 0
    bodyAdjust = 1
    bodyOffset = choose(6,6,7,7,7+gender,8,8+gender,9+gender)
    legOffset[1] = 3
    legOffset[2] = 3
    chstAdjust = 0
    skrtSize = 0
    break
    
    //Medium characters
    case 2:
    hipsImage = 2
    bodyImage = choose(0,2)
    legOffset[1] = 4
    legOffset[2] = 4
    bodyAdjust = 1
    bodyOffset = choose(7,7+gender,8,8+gender)
    skrtSize = 1
    break
    
    //Large characters
    case 3:
    hipsImage = 4
    bodyImage = 2
    bodyAdjust = 1
    legOffset[1] = 4
    legOffset[2] = 4
    bodyOffset = 10
    skrtSize = 1
    break
}

switch(bodyImage)
{
    case 0: //Small Body
    shldrOffset[1] = 5
    shldrOffset[2] = 7
    shldrAdjust = 1
    headAdjust = -1
    headOffset = choose(6,7)    
    chstImage = 1
    chstOffset = -1
    break
    
    case 2: //Medium Body
    shldrOffset[1] = 6
    shldrOffset[2] = 8
    shldrAdjust = 1
    headOffset = choose(6,7)
    headAdjust = -1   
    chstImage = 1
    chstOffset = -1
    break
}

//Male chest exception
if gender = masc
{
    chstImage = 0
}

if bodyOffset >= 9 and hipsImage != 4
{
    legAdjust[1] += 1+gender
    legAdjust[2] += 1+gender
    hipsOffset += 1+gender
}


height = hipsOffset+bodyOffset+headOffset+5

#define halflingRaceDetails
switch(size)
{
    //Small characters
    case 1:
    hipsImage = 0
    bodyImage = 0
    bodyAdjust = choose(0,-1)
    bodyOffset = choose(4,5)
    chstAdjust = 0
    break
    
    //Medium characters
    case 2:
    hipsImage = 2
    bodyImage = choose(0,2)
    bodyOffset = choose(4,5)
    bodyAdjust = 0
    if bodyImage = 0 {bodyAdjust = 0}
    chstAdjust = 1
    break
    
    //Medium characters
    case 3:
    hipsImage = 4
    bodyImage = choose(2,4)
    bodyAdjust = choose(0,-1)
    bodyOffset = choose(4,5)
    break
}

switch(bodyImage)
{
    case 0: //Small Body
    shldrOffset[1] = 4
    shldrOffset[2] = 3
    shldrAdjust = 0
    chstImage = choose(1,2)
    if chstImage = 2 {bodyAdjust = -1}
    chstAdjust += 1+bodyAdjust
    if chstImage = 1 {chstAdjust = 1}
    headAdjust = 1
    break
    
    case 2: //Medium Body
    shldrOffset[1] = 5
    shldrOffset[2] = 4
    shldrAdjust = 1
    chstImage = 3
    chstAdjust = 1
    headOffset = 7 
    headAdjust = 1   
    break
    
    case 4: //Big Body
    shldrOffset[1] = 5
    shldrOffset[2] = 5
    shldrAdjust = 1
    chstImage = 3
    chstAdjust = 1
    headOffset = 7
    headAdjust = 0
    break
}

//Male chest exception
if gender = masc
{
    chstImage = 0
}

height = hipsOffset+bodyOffset+headOffset+5