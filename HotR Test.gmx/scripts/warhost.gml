#define warhost


#define whName
switch(argument0)
{
case femme:
switch(min(irandom(24),irandom(50)))
{
    case 0: return 'Ursula' break
    case 1: return 'Ilse' break
    case 2: return 'Hildegard' break
    case 3: return 'Gerda' break
    case 4: return 'Ingeborg' break
    case 5: return 'Irmgard' break
    case 6: return 'Helga' break
    case 7: return 'Gertrud' break
    case 8: return 'Liselotte' break
    case 9: return 'Edith' break
    case 10: return 'Erika' break
    case 11: return 'Gisela' break
    case 12: return 'Elisabeth' break
    case 13: return 'Ruth' break
    case 14: return 'Anneliese' break
    case 15: return 'Margarethe' break
    case 16: return 'Margot' break
    case 17: return 'Erna' break
    case 18: return 'Hertha' break
    case 19: return 'Maria' break
    case 20: return 'Inge' break
    case 21: return 'Anna' break
    case 22: return 'Ingrid' break
    case 23: return 'Charlotte' break
    case 24: return 'Eva' break
}
break

case masc:
switch(min(irandom(24),irandom(50)))
{
    case 0: return 'Hans' break
    case 1: return 'Gunter' break
    case 2: return 'Karl' break
    case 3: return 'Heinz' break
    case 4: return 'Werner' break
    case 5: return 'Gerhard' break
    case 6: return 'Walther' break
    case 7: return 'Kurt' break
    case 8: return 'Horst' break
    case 9: return 'Helmut' break
    case 10: return 'Herbert' break
    case 11: return 'Ernst' break
    case 12: return 'Rudolf' break
    case 13: return 'Willi' break
    case 14: return 'Rolf' break
    case 15: return 'Erich' break
    case 16: return 'Heinrich' break
    case 17: return 'Otto' break
    case 18: return 'Wilhelm' break
    case 19: return 'Alfred' break
    case 20: return 'Hermann' break
    case 21: return 'Paul' break
    case 22: return 'Erwin' break
    case 23: return 'Wolfgang' break
    case 24: return 'Klaus' break
}
break
}
#define raidingParty
//Create Party
createCharacterSheet(id,raiderCaptain)

repeat(choose(4,5,6,7))
{
    createCharacterSheet(id,raider)
}

/*
mooks[0,0] = emptySlot
mookTypes = 0

#define cultParty
//Create Party
repeat(choose(1))
{
    createCharacterSheet(id,cultChampion)
}

repeat(choose(1,2,3,4))
{
    createCharacterSheet(id,cultWarrior)
}

repeat(choose(5,6,7,8,9,10))
{
    createCharacterSheet(id,cultThrall)
}
/*
mooks[0,0] = emptySlot
mookTypes = 0

#define wretchParty
createCharacterSheet(id,warhostChampion)

repeat(choose(9,10,12,14))
{
    createCharacterSheet(id,wretchSlave)
}


//Tempfun
money = 0.00

//Inventory
ii = 0
repeat(choose(60))
{
    inventory[ii,0] = choose(
    choose(knife,dagger,epee,armingSword,greatSword,longSword,shortSword,sabre,bastardSword),
    choose(handAxe,battleAxe,greatAxe),
    choose(halberd,shortSpear,spear,pike),
    choose(maul,lightMace,mace,hammer,warhammer,staff),
    choose(chainMail,chainShirt,breastPlate,robe,dress),
    choose(heaterShield,squareShield,roundShield),
    choose(shortBow,crossbow,longBow))
    inventory[ii,1] = choose(0,0,0,1,1,1,1,1,1,1,1,1)
    inventory[ii,2] = emptyMutator
    inventory[ii,3] = emptyMutator
    inventory[ii,4] = emptyMutator
    ii += 1
    inventorySize = ii
}


#define warhostParty
createCharacterSheet(id,warhostChampion)

repeat(choose(2,3,4))
{
    createCharacterSheet(id,warhostWarrior)
}

repeat(choose(9,10,12,14))
{
    createCharacterSheet(id,wretchSlave)
}



#define raiderCaptain
//Rules for a Raider Captain
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(whName)
attributeGen()
classGen(class_warrior)

invSlot[1,0] = choose(maul,greatAxe,longSword)
invSlot[2,0] = emptySlot
invSlot[8,0] = breastPlate

personality = whMighty

experience += 25+irandom(10)
checkLevelUp(id)

#define raider
//Rules for a Raider Captain
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(whName)
attributeGen()
classGen(class_warrior)

mook = true
experience += 5+irandom(10)
checkLevelUp(id)

#define warhostChampion
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_warriorsBlood)
detailGen(whName)
attributeGen()
classGen(class_warrior)

invSlot[1,0] = choose(greatSword,maul)
invSlot[2,0] = choose(blackTowerShield)
invSlot[3,0] = emptySlot
invSlot[4,0] = choose(warriorChainmail)
invSlot[8,0] = choose(blackKnightPlate)

personality = whMighty

sleeveVariant = 2
backTrinket = -4
neckTrinket = -4
hipTrinket = -4
eyeTrinket = -4
headScarfTrinket = -4
overBodyItem = -4
underBodyItem = -4
underLegsItem = -4

experience += 20+irandom(100)
checkLevelUp(id)

#define warhostWarrior
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_warriorsBlood)
detailGen(whName)
attributeGen()
classGen(class_warrior)

invSlot[1,0] = choose(greatSword,maul)
invSlot[2,0] = choose(blackTowerShield)
invSlot[3,0] = emptySlot
invSlot[4,0] = choose(warriorChainmail)
invSlot[8,0] = choose(blackKnightPlate)

sleeveVariant = 2
backTrinket = -4
neckTrinket = -4
hipTrinket = -4
eyeTrinket = -4
headScarfTrinket = -4
overBodyItem = -4
underBodyItem = -4
underLegsItem = -4
mook = true

experience += 20
checkLevelUp(id)

#define cultChampion
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(whName)
attributeGen()
classGen(class_cultist)

personality = whMighty

experience += 50+irandom(1000)
checkLevelUp(id)

#define cultWarrior
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(whName)
attributeGen()
classGen(class_cultist)


#define wretchSlave
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_wretch)
detailGen(whName)
attributeGen()
classGen(class_cultist)

invSlot[1,0] = choose(shortSpear)
invSlot[3,0] = choose(emptySlot,emptySlot,shortBow)
invSlot[4,0] = choose(wretchRags,wretchArmour)

eyeTrinket = -4
backTrinket = -4
neckTrinket = -4
hipTrinket = -4
headTrinket = -4
headScarfTrinket = -4

overBodyItem = -4
underBodyItem = -4
underLegsItem = -4

#define cultThrall
//Rules for a commonwealth adventurer
initializeHumanoid()
fashionInitialize()
raceGen(race_northerner)
detailGen(whName)
attributeGen()
classGen(class_thrall)

headScarfTrinket = spr_hood
favColour = choose(make_colour_rgb(49,19,9),make_colour_rgb(39,19,39),make_colour_rgb(19,19,39), make_colour_rgb(9,29,9),make_colour_rgb(39,19,19), make_colour_rgb(19,19,19))

invSlot[4,0] = robe
invSlot[1,0] = dagger
invSlot[2,0] = choose(dagger,knife,roundShield,emptySlot)

#define class_cultist
className = 'Cultist'

//Inventory
invSlot[1,0] = dagger
invSlot[2,0] = choose(dagger,knife,roundShield,emptySlot)
invSlot[3,0] = choose(shortBow,crossbow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

life += 0
classLife = .10
stamina += 2
classStamina = .15

mSkill = 1
rSkill = 1
cSkill = 2
classMSkill = .15
classRSkill = .15
classCSkill = .20

//Talent
talent[0,0] = choose(treeSubterfuge,treeInsight)
talent[0,5] = 1
talent[1,0] = choose(treeKnowledge,treeAlchemy)
talent[1,5] = 2

mook = true
headScarfTrinket = spr_hood
favColour = choose(make_colour_rgb(49,19,9),make_colour_rgb(39,19,39),make_colour_rgb(19,19,39), make_colour_rgb(9,29,9),make_colour_rgb(39,19,19), make_colour_rgb(19,19,19))

#define race_wretch
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_wretch
raceName = 'Wretch'
gender = masc

headSprite = choose(spr_wretchHead,spr_wretchTwoHead)
bodySprite = spr_wretchBody
hipsSprite = spr_wretchHips
eyeVis = false
earSprite = spr_none
hairStyle = choose(spr_none,spr_wretchHair,spr_wretchHair2)    //Replace later with some wretch exclusive hairstyles
if headSprite = spr_wretchTwoHead
{hairStyle = spr_none}
hairColour = black
skinTone = c_white
size = choose(1,1,1,2,3)

    legSprite = spr_wretchLegs
    legSpriteMod = 0

wepSize = 1
armSize = 1

ii = choose(-1,0,1,2)
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 7+ii

smallRaceDetails()
break

case 1:
return ''
break


case 2:
grace -= 1
will -= 1
might -= 2
fellowship -= 2

mgtCap = 8
grcCap = 9
wilCap = 9
felCap = 8


raceMove = -1
break
}

#define race_warriorsBlood
//0 Vis Generation
//1 Name Generation
//2 Attribute Generation

switch(argument0)
{
case 0:
race = race_warriorsBlood
raceName = 'Human'
gender = choose(femme,masc,masc,masc)

if 1+irandom(99) < 50
{
    firstName = script_execute(whName,gender)
}

if irandom(1)+gender >= 2
{
    beardStyle = choose(spr_bigMoustache, spr_fullBeard, spr_sadStache, spr_longStache, spr_chaplinStache, spr_goatee)
}

portraitAdj = 6
headSprite = choose(spr_baseHead,spr_warriorHead,spr_youngHead,spr_oldHead,spr_oldHead)
faceImage = 2
bodySprite = spr_warriorBody
hipsSprite = spr_warriorHips
chstSprite = spr_warriorChst
armsSprite = spr_warriorArms
handSprite = spr_warriorHand
armsLength = 1.3
hairStyle = choose(spr_longHair,spr_bunHair,spr_shortHair)
hairColour = choose(black,dkBrown)
skinTone = choose(pale,pale,pale,pale,fair,beige)
size = choose(1,1,1,1,1+gender,2,2+gender,3)

    legSprite = spr_warriorLegs
    legSpriteMod = 0 
    handHeightAdj[1] = 4
    handHeightAdj[2] = 4
    
ii = choose(-1,-2)
legAdjust[1] = ii
legAdjust[2] = ii
hipsOffset = 17+ii

wepSize = 3
armSize = 3

largeRaceDetails()
break

case 1:
return choose("Cold","Frost","War","Wild","Blood","Valour","Living","White","Black","Grey")
+choose("man","wood","ship","rock","soul","fen","hold","castle","keep","vale")
break


case 2:
levelAdj = 4
xpToLevel(id)
might += 6
will += 2
grace -= 1

grcCap = 9
mgtCap = 15
wilCap = 12
break

case 3:
break
}