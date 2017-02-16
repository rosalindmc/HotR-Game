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
raceName = 'Elf'
gender = choose(femme,femme,masc)

skinTone = choose(fair,fair,fair,dark,beige,beige,pale,pale)
headSprite = spr_elfHead
hairStyle = choose(spr_upHair,spr_shortHair)
hairColour = choose(black,dkBrown,dkRed,c_yellow)
break

case 1:
lastName = choose("Frost","Strong","Kind","Green","Free","Swift","Blue")
+choose("blade","storm","heart","hilt","foot","man","tree")
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
raceName = 'Human'

break

case 1:
lastName = choose("Frost","Strong","Kind","Green","Free","Swift","Blue")
+choose("blade","storm","heart","hilt","foot","man","tree")
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
raceName = 'Human'

break

case 1:
lastName = choose("Frost","Strong","Kind","Green","Free","Swift","Blue")
+choose("blade","storm","heart","hilt","foot","man","tree")
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
raceName = 'Dwarf'

break

case 1:
lastName = choose("Frost","Strong","Kind","Green","Free","Swift","Blue")
+choose("blade","storm","heart","hilt","foot","man","tree")
break


case 2:
might += 3
will += 3
grace -= 2
    
mgtCap = 13
grcCap = 8
wilCap = 13
break
}

#define race_halfling
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
raceName = 'Halfling'

break

case 1:
lastName = choose("Stout","Strong","Swift","Kind","Free","Love","Wheat","Red","Winter","Old")
+choose("blade","storm","tooth","axe","ship","spear","hilt","heart","harvest","foot")
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
break
}

#define race_orc
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
raceName = 'Orc'

break

case 1:
lastName = choose("Frost","Strong","War","Green","Free","Savage","Blue","Red","Winter","Old")
+choose("blade","storm","tooth","axe","ship","spear","hilt","wolf","bear","sea")
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
raceName = 'Tiefling'

break

case 1:
lastName = choose("Frost","Strong","Kind","Green","Free","Swift","Blue")
+choose("blade","storm","heart","hilt","foot","man","tree")
break


case 2:
randDice += 2
break
}
