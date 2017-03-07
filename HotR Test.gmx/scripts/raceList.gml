#define raceList
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
break
}

#define race_highelf
//0 Details Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_highelf
raceName = 'Elf'
gender = choose(femme,femme,femme,masc)

if irandom(4)+gender >= 5
{
    beardStyle = choose(spr_bigMoustache, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

skinTone = choose(fair,fair,fair,dark,dark,beige,beige,pale,pale)
headSprite = choose(spr_youngHead,spr_youngHead,spr_baseHead,spr_youngHead,spr_freckleHead)
earSprite = spr_elfEar
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
if skinTone = fair or skinTone = pale
{hairColour = choose(black,dkBrown,dkRed,c_yellow)}
else
{hairColour = choose(black,dkBrown)}

bodyImage = choose(0,0,0,1,1,1,2)
size = min(choose(1,1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+bodyImage
    
legAdjust[1] = 1
legAdjust[2] = 1
break

case 1:
return choose("Fey","Shadow","Light","Wind","Wild","Flame","Love","Willow","Oak","Elm")
+choose("wood","leaf","tree","blade","heart","man","maiden","arrow","grace","hunt")
break

case 2:
randDice += 2
break

case 3:     //Race Trait
sResist += .25
break
}

#define race_irunian
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_irunian
raceName = 'Human'
gender = choose(femme,femme,masc)

if irandom(2)+gender >= 3
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

headSprite = choose(spr_baseHead,spr_youngHead,spr_oldHead)
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = choose(black,dkBrown)
skinTone = choose(dark,dark,beige,beige,beige)
bodyImage = choose(0,0,1,2)
size = min(choose(1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+bodyImage

legAdjust[1] = 1
legAdjust[2] = 1
break

case 1:
return choose("Wise","Just","Sand","New","Law","Trade","Book","Scroll","Civil","Fair")
+choose("castle","mind","law","man","pact","bringer","keeper","thinker","thought","river")
break


case 2:
randDice += 1
cunning += 1
    
cunCap = 11
break

case 3:     //Race Trait
bravery += .20
break
}

#define race_northerner
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_northerner
raceName = 'Human'
gender = choose(femme,femme,masc)

if irandom(1)+gender >= 2
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

headSprite = choose(spr_baseHead,spr_youngHead,spr_oldHead,spr_oldHead)
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = choose(black,dkBrown,dkRed,c_yellow)
skinTone = choose(pale,pale,fair)
bodyImage = choose(0,0,1,2,2)
size = min(choose(1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+bodyImage
    
legAdjust[1] = 1
legAdjust[2] = 1
break

case 1:
return choose("Cold","Frost","War","Wild","Blood","Valour","Living","White","Black","Grey")
+choose("man","wood","ship","rock","soul","fen","hold","castle","keep","vale")
break


case 2:
will += 2
    
wilCap = 12
break

case 3:     //Race Trait
onHit[onHitSize,0] = northMoraleGain
onHit[onHitSize,1] = 'Northerner'
onHit[onHitSize,2] = false
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define race_dwarf
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_dwarf
raceName = 'Dwarf'
gender = choose(femme,masc)

if irandom(9)+gender >= 9
{
    beardStyle = choose(spr_longBeard, spr_fullBeard, spr_sadStache, spr_longStache)
}

headSprite = choose(spr_oldHead,spr_oldHead,spr_oldHead,spr_baseHead)
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = choose(black,dkBrown,dkRed,c_yellow)
skinTone = choose(beige,fair,pale)
bodyImage = choose(0,0,0,1,1)
size = 4   //min(choose(3,3,4)+gender,4)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    hipsOffset = 8+bodyImage
    height = 25+bodyImage
    raceMove = -1
    //headOffset -= 1

legAdjust[1] = 1
legAdjust[2] = 1
break

case 1:
return choose("Hard","Stone","Iron","Stout","Law","Wise","Gold","Copper","Noble","Strong")
+choose("","mountain","beard","man","vein","crown","hilt","hammer","axe","dwarf")
break


case 2:
might += 3
will += 3
grace -= 2
    
mgtCap = 13
grcCap = 8
wilCap = 13

raceMove = -1
break

case 3:     //Race Trait
stubborn = true
break
}

#define race_halfling
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_halfling
raceName = 'Halfling'
gender = choose(femme,femme,masc)

if irandom(4)+gender >= 5
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

headSprite = choose(spr_youngHead,spr_freckleHead)
earSprite = choose(spr_elfEar,spr_none)
hairColour = choose(black,dkBrown,dkRed,c_yellow)
skinTone = choose(fair,fair,fair,dark,beige,beige,pale,pale)
if skinTone = fair or skinTone = pale
{hairColour = choose(black,dkBrown,dkRed,c_yellow)}
else
{hairColour = choose(black,dkBrown)}
bodyImage = 0
size = choose(1,1,1,2,3)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    hipsOffset = 8+bodyImage
    height = 24+bodyImage
    raceMove = -1
        
bodyOffset -= 1  

legAdjust[1] = 1
legAdjust[2] = 1
break

case 1:
return choose("Strong","Brave","Swift","Kind","Free","Love","Spring","Autumn","Fair","Summer")
+choose("","smith","weather","man","field","tree","hill","heart","harvest","foot")
break


case 2:
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

raceMove = -.5
break

case 3:     //Race Trait
onDown[onDownSize,0] = halflingMoraleGain
onDown[onDownSize,1] = 'Halfling'
onDown[onDownSize,2] = false
onDown[onDownSize,3] = false
onDown[onDownSize,4] = false
onDown[onDownSize,5] = false
onDownSize += 1
break
}

#define race_orc
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_orc
raceName = 'Orc'
gender = choose(femme,masc,masc,masc,masc,masc)

if irandom(3)+gender >= 4
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

headSprite = choose(spr_oldHead,spr_baseHead,spr_baseHead)
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = black
skinTone = choose(orcBrown,orcGreen)
bodyImage = choose(0,1,1,1,2,2)
size = min(choose(2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+(2*bodyImage)

bodyOffset += bodyImage   

legAdjust[1] = 1
legAdjust[2] = 1
break

case 1:
return choose("Frost","Strong","War","Green","Free","Savage","Blue","Red","Winter","Old")
+choose("blade","storm","tooth","axe","ship","spear","hall","wolf","bear","sea")
break


case 2:
might += 4
grace -= 1
cunning -= 1
will -= 1
fellowship -= 1

mgtCap = 14
break

case 3:     //Race Trait
threatResist += .5
break
}

#define race_tiefling
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_tiefling
raceName = 'Tiefling'
gender = choose(femme,femme,masc)

if irandom(4)+gender >= 5
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

headSprite = choose(spr_youngHead,spr_youngHead,spr_baseHead,spr_youngHead,spr_freckleHead)
earSprite = choose(spr_elfEar,spr_none)
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = black
skinTone = choose(fair, beige, dark, pale, demonRed, demonPurp, demonTan)
bodyImage = choose(0,1,1,2)
size = min(choose(1,1,1,2,2,3,3)+(gender*2),4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+bodyImage
    
legAdjust[1] = 1
legAdjust[2] = 1
break

case 1:
return choose("Shadow","Dark","Blood","Murder","Slaughter","Brutal","Vile","Butcher","Gore","War")
+choose("maul","forge","slave","tyrant","axe","fist","chains","master","thrall","sword")
break


case 2:
randDice += 2
break

case 3:     //Race Trait
sResist += .25
break
}

#define race_goblin
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_goblin
raceName = 'Goblin'
gender = masc

if irandom(4)+gender >= 5
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

headSprite = choose(spr_oldHead,spr_baseHead,spr_baseHead)
earSprite = spr_elfEar
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = black
skinTone = choose(orcBrown,orcGreen)
bodyImage = 0
size = choose(1,1,1,2,3)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    hipsOffset = 8+bodyImage
    height = 24+bodyImage
    raceMove = -1
        
bodyOffset -= 1  

legAdjust[1] = 1
legAdjust[2] = 1
break

case 1:
break


case 2:
grace += 1
might -= 3

mgtCap = 7
grcCap = 11

raceMove = -1
break
}
