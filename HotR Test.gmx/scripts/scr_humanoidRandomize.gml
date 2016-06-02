//Gender and Size
gender = choose(gndr_female,gndr_male)
var s = min(choose(1,1,2,2,3,3,4)+gender,4)
var i = choose(0,0,0,1)
var r = choose(1,2,3,4,5,6)


switch(r)
{
case 1: //High Elf
raceHead = spr_elfHead
skinTone = choose(fair,fair,fair,dark,beige,beige,pale,pale)
s = min(choose(1,1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+i
    height = 28+i

break

case 2: //Human
raceHead = spr_humanHead
skinTone = choose(dark,dark,dark,beige,beige,beige,beige,pale)
s = min(choose(1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+i
    height = 28+i

break

case 3: //Dwarf
raceHead = spr_humanHead
skinTone = choose(beige,pale)
s = min(choose(3,3,4)+gender,4)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    hipsOffset = 8+i
    height = 25+i

break

case 4: //Halfling
raceHead = choose(spr_humanHead,spr_elfHead)
skinTone = choose(fair,fair,fair,dark,beige,beige,pale,pale)
s = min(choose(1,1,2,3),4)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    hipsOffset = 8+i
    height = 25+i
    
bodyOffset -= 1
height -= 1    

break

case 5: //Orc
raceHead = spr_humanHead
skinTone = choose(orcBrown,orcGreen)
s = min(choose(2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+i
    height = 28+i
    
bodyOffset += 1
height += 1    
    
break

case 6: //Tiefling
raceHead = spr_elfHead
skinTone = choose(fair,demonRed)
s = min(choose(1,1,1,2,2,3,3)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+i
    height = 28+i
    
break
}

if skinTone = fair or skinTone = pale
{
hairColour = choose(black,dkBrown,dkRed,c_yellow,beige)
}

if skinTone = beige
{
hairColour = choose(black,dkBrown)
}

legAdjust[1] = i
legAdjust[2] = i

//Faces
if gender = gndr_male
{
    faceImage = choose(0,2)
}

//Randomizing heights
i = choose(0,0,0,1)
bodyOffset -= i
height -= i

i = choose(0,0,0,1)
headOffset -= i
height -= i

switch(s)
{
//Small characters
case 1:
hipsImage = 0
bodyImage = 0
break

//Medium characters
case 2:
hipsImage = 2
bodyImage = choose(0,2,4)
bodyAdjust = -1
break

//Medium characters
case 3:
hipsImage = 4
bodyImage = choose(2,4)
bodyAdjust = -1
break

//Large characters
case 4:
hipsImage = 6
bodyImage = choose(2,4)
legOffset[2] = 4
bodyAdjust = -1
break
}

switch(bodyImage)
{
case 0: //Small Body
shldrOffset[1] = 4
shldrOffset[2] = 3
shldrAdjust = 0
chstImage = choose(1,2)
    if chstImage = 1
    {
    chstAdjust = 1
    }
break

case 2: //Medium Body
shldrOffset[1] = 5
shldrOffset[2] = 4
shldrAdjust = 1
chstImage = choose(2,3)
chstAdjust = 1
headOffset += 1
break

case 4: //Big Body
shldrOffset[1] = 5
shldrOffset[2] = 5
shldrAdjust = 1
chstImage = 3
chstAdjust = 1
headOffset += 1
break
}

//Male chest exception
if gender = gndr_male
{
chstImage = 0
}

//Establish height
handHeight[1] += height-28
handHeight[2] += height-28
