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

skinTone = choose(fair,fair,fair,dark,beige,beige,pale,pale)
headSprite = spr_elfHead
hairStyle = choose(spr_upHair,spr_shortHair)
hairColour = choose(black,dkBrown,dkRed,c_yellow)

bodyImage = choose(0,0,0,1,1,1,2)
size = min(choose(1,1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+bodyImage
break

case 1:
return choose("Fey","Shadow","Light","Wind","Wild","Flame","Love","Willow","Oak","Elm")
+choose("wood","leaf","tree","blade","heart","man","maiden","arrow","grace","hunt")
break

case 2:
randDice += 2
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

raceHead = spr_humanHead
skinTone = choose(dark,dark,beige,beige,beige)
bodyImage = choose(0,0,1,2)
size = min(choose(1,1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+bodyImage

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

raceHead = spr_humanHead
skinTone = choose(pale,pale,fair)
bodyImage = choose(0,0,1,2,2)
size = min(choose(1,2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+bodyImage
    

break

case 1:
return choose("Cold","Frost","War","Wild","Blood","Valour","Living","White","Black","Grey")
+choose("man","wood","ship","rock","soul","fen","hold","castle","keep","vale")
break


case 2:
will += 2
    
wilCap = 12
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

raceHead = spr_humanHead
skinTone = choose(fair,pale)
bodyImage = choose(0,0,0,1,1)
size = 4   //min(choose(3,3,4)+gender,4)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    hipsOffset = 8+bodyImage
    height = 25+bodyImage
    raceMove = -1
    //headOffset -= 1


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

raceHead = choose(spr_humanHead,spr_elfHead)
skinTone = choose(fair,fair,fair,dark,beige,beige,pale,pale)
bodyImage = 0
size = choose(1,1,1,2,3)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    hipsOffset = 8+bodyImage
    height = 24+bodyImage
    raceMove = -1
        
bodyOffset -= 1  

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

raceHead = spr_humanHead
skinTone = choose(orcBrown,orcGreen)
bodyImage = choose(0,1,1,1,2,2)
size = min(choose(2,2,3,3,4)+gender,4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+(2*bodyImage)

bodyOffset += bodyImage   

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

raceHead = spr_elfHead
skinTone = choose(fair,demonRed, demonPurp, demonTan)
bodyImage = choose(0,1,1,2)
size = min(choose(1,1,1,2,2,3,3)+(gender*2),4)

    legSprite = spr_leg
    legSpriteMod = 0 
    hipsOffset = 11+bodyImage
    height = 28+bodyImage
break

case 1:
return choose("Shadow","Dark","Blood","Murder","Slaughter","Brutal","Vile","Butcher","Gore","War")
+choose("maul","forge","slave","tyrant","axe","fist","chains","master","thrall","sword")
break


case 2:
randDice += 2
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

raceHead = spr_elfHead
skinTone = choose(orcBrown,orcGreen)
bodyImage = 0
size = choose(1,1,1,2,3)

    legSprite = spr_shortLeg
    legSpriteMod = 1
    hipsOffset = 8+bodyImage
    height = 24+bodyImage
    raceMove = -1
        
bodyOffset -= 1  

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