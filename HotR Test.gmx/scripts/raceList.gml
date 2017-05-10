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

if gender = femme
{
    headScarfTrinket = choose(-4,-4,-4,-4,-4,-4,-4,-4,spr_hood)
}

skinTone = choose(fair,fair,fair,dark,dark,beige,beige,pale,pale)
headSprite = choose(spr_youngHead,spr_youngHead,spr_baseHead,spr_youngHead,spr_freckleHead)
earSprite = spr_elfEar
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
if skinTone = fair or skinTone = pale
{hairColour = choose(black,dkBrown,dkRed,c_yellow)}
else
{hairColour = choose(black,dkBrown)}

size = min(choose(1,1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 

ii = 1
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 12+ii

mediumRaceDetails()
break

case 1:
return choose("Fey","Shadow","Light","Wind","Wild","Flame","Love","Willow","Oak","Elm")
+choose("wood","leaf","tree","blade","heart","man","maiden","arrow","grace","hunt")
break

case 2:
randDice += 1
grace += 1
fellowship += 1

grcCap = 11
felCap = 11
break

case 3:     //Race Trait
sResist += .25
break
}

#define race_darkelf
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

skinTone = choose(pale)
headSprite = choose(spr_youngHead,spr_youngHead,spr_baseHead,spr_youngHead,spr_freckleHead)
earSprite = spr_elfEar
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = choose(black)

size = min(choose(1,1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 

ii = 1
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 12+ii

mediumRaceDetails()
break

case 1:
return choose("Fey","Shadow","Dark","Wind","Wild","Strong","Love","Willow","Oak","Elm")
+choose("wood","leaf","tree","blade","heart","man","maiden","arrow","grace","hunt")
break

case 2:
randDice += 1
grace += 2

grcCap = 12
break

case 3:     //Race Trait
//Replace with Dark Elf race traits
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

if 1+irandom(99) < 75
{
    firstName = script_execute(irunName,gender)
}

if irandom(2)+gender >= 3
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

if gender = femme
{
    headScarfTrinket = choose(-4,spr_hood)
}

headSprite = choose(spr_baseHead,spr_youngHead,spr_oldHead)
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = choose(black,dkBrown)
skinTone = choose(dark,dark,beige,beige,beige)
size = min(choose(1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    
ii = 1
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 12+ii

mediumRaceDetails()
break

case 1:
return choose("Wise","Just","Sand","New","Law","Trade","Book","Scroll","Civil","Fair")
+choose("castle","mind","law","man","pact","bringer","keeper","thinker","thought","river")
break


case 2:
randDice += 1
cunning += 2
    
cunCap = 12
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

if 1+irandom(99) < 50
{
    firstName = script_execute(whName,gender)
}

if irandom(1)+gender >= 2
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

if gender = femme
{
    headScarfTrinket = choose(-4,-4,-4,spr_hood)
}

headSprite = choose(spr_baseHead,spr_youngHead,spr_oldHead,spr_oldHead)
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = choose(black,dkBrown,dkRed,c_yellow)
skinTone = choose(pale,pale,fair)
size = min(choose(1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
     
ii = choose(1,2,1+gender)
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 12+ii

mediumRaceDetails()
break

case 1:
return choose("Cold","Frost","War","Wild","Blood","Valour","Living","White","Black","Grey")
+choose("man","wood","ship","rock","soul","fen","hold","castle","keep","vale")
break


case 2:
will += 2
randDice += 1
    
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

if 1+irandom(99) < 90
{
    firstName = script_execute(efName,gender)
}

if irandom(9)+gender >= 9
{
    beardStyle = choose(spr_longBeard, spr_fullBeard, spr_sadStache, spr_longStache)
}

headSprite = choose(spr_oldHead,spr_oldHead,spr_oldHead,spr_baseHead)
hairStyle = choose(spr_shortHair)
hairColour = choose(black,dkBrown,dkRed,c_yellow)
skinTone = choose(beige,fair,pale)
size = 4

    legSprite = spr_shortLeg
    legSpriteMod = 1

ii = 1
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 9+ii

mediumRaceDetails()
break

case 1:
return choose("Hard","Stone","Iron","Stout","Law","Wise","Gold","Copper","Noble","Strong")
+choose("","mount","beard","man","vein","crown","hilt","hammer","axe","dwarf")
break


case 2:
levelAdj = 1
xpToLevel(id)
life += 2
stamina += 2

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
size = choose(1,1,1,2,3,4)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    
ii = 1
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 9+ii

wepSize = 1

halflingRaceDetails()
break

case 1:
return choose("Strong","Brave","Swift","Kind","Free","Love","Spring","Autumn","Fair","Summer")
+choose("","smith","weather","man","field","tree","hill","heart","harvest","foot")
break


case 2:
levelAdj = -1
xpToLevel(id)
life -= 2
stamina += 2

grace += 1
cunning += 1
fellowship += 2
might -= 2

mgtCap = 8
grcCap = 11
cunCap = 11
felCap = 12

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

dodge += 5
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

if 1+irandom(99) < 50
{
    firstName = script_execute(cfName,gender)
}

if irandom(3)+gender >= 4
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

headSprite = choose(spr_oldHead,spr_baseHead,spr_baseHead)
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = black
skinTone = choose(orcBrown,orcGreen)
size = min(choose(2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 

ii = choose(1,1+gender)
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 12+ii

mediumRaceDetails()
break

case 1:
return choose("Frost","Strong","War","Green","Free","Savage","Blue","Red","Winter","Old")
+choose("blade","storm","tooth","axe","ship","spear","hall","wolf","bear","sea")
break


case 2:
might += 4
will += 1
grace -= 1
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
size = min(choose(1,1,1,2,2,3,3)+(gender*2),4)

    legSprite = spr_leg
    legSpriteMod = 0 
    
ii = choose(1,1+gender)
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 12+ii

mediumRaceDetails()
break

case 1:
return choose("Shadow","Dark","Blood","Murder","Slaughter","Brutal","Vile","Butcher","Gore","War")
+choose("maul","forge","slave","tyrant","axe","fist","chains","master","thrall","sword")
break


case 2:
randDice += 3

mgtCap = 15
grcCap = 15
wilCap = 15
felCap = 15
cunCap = 15
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
size = choose(1,1,1,2,3,4)

    legSprite = spr_shortLeg
    legSpriteMod = 1

ii = 1
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 9+ii

halflingRaceDetails()
break

case 1:
break


case 2:
levelAdj = -2
xpToLevel(id)
life -= 2
grace += 1
might -= 3

mgtCap = 7
grcCap = 11

raceMove = -1
break
}