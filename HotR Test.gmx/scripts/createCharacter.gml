#define createCharacter
//Character Creator Script

script_execute(ruleSet)

/*
//Race
raceGen()
detailGen()

//Attributes must happen after Race
attributeGen()

//Class
classGen()

//Spells

//Fashion
fashionInitialize()

//Inventory

//Level Up

#define raceGen
script_execute(argument0,0)

switch(size)
{
    //Small characters
    case 1:
    hipsImage = 0
    bodyImage = 0
    bodyAdjust = choose(0,-1)
    chstAdjust = 0
    break
    
    //Medium characters
    case 2:
    hipsImage = 2
    bodyImage = choose(0,2)
    bodyAdjust = -1
    if bodyImage = 0 {bodyAdjust = 0}
    chstAdjust = 1
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
    headOffset += 1 
    height += 1
    headAdjust = 1   
    break
    
    case 4: //Big Body
    shldrOffset[1] = 5
    shldrOffset[2] = 5
    shldrAdjust = 1
    chstImage = 3
    chstAdjust = 1
    headOffset += 1
    height += 1
    headAdjust = 0
    break
}

//Male chest exception
if gender = masc
{
    chstImage = 0
}

//Establish Hand height
handHeight[1] += height-28
handHeight[2] += height-28

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
switch(irandom(4))
{
case 0: 
class = 'Wizard'
invSlot[1,0] = choose(greatSword,armingSword,staff)
invSlot[3,0] = choose(shortbow,longBow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

life = 2
classLife = .25
stamina = 6
classStamina = .35

mSkill = 1
rSkill = 1
cSkill = 3
classMSkill = .3
classRSkill = .3
classCSkill = .5

cunning += 1
will += 1
fellowship += 1

//Talent
talent[0,0] = choose(treeInsight,treeDiscipline)
talent[0,5] = 1
talent[1,0] = choose(treeMedicine,treePerform,treeDiplomacy,treeAlchemy,treeKnowledge)
talent[1,5] = 1
break
case 1: 
class = 'Duelist'
invSlot[1,0] = sabre
invSlot[2,0] = choose(dagger,roundShield,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

life = 4
classLife = .3
stamina = 4
classStamina = .3

mSkill = 3
rSkill = 2
cSkill = 1
classMSkill = .5
classRSkill = .4
classCSkill = .3

cunning += 1
grace += 1
fellowship += 1

//Talent
talent[0,0] = choose(treeMartial,treeInsight,treeMobility)
talent[0,5] = 2
talent[1,0] = choose(treeDiplomacy,treeStreetwise,treePerform)
talent[1,5] = 1
break
case 2: 
class = 'Adventurer'
invSlot[1,0] = choose(greatSword,maul,greatAxe)
invSlot[3,0] = choose(shortbow,longBow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

life = 4
classLife = .3
stamina = 8
classStamina = .4

mSkill = 2
rSkill = 2
cSkill = 1
classMSkill = .4
classRSkill = .4
classCSkill = .3

cunning += 1
grace += 2

//Talent
talent[0,0] = choose(treeMartial,treeInsight,treeMobility)
talent[0,5] = 2
talent[1,0] = choose(treeDiplomacy,treeSurvival)
talent[1,5] = 1
break
case 3: 
class = 'Thief'
invSlot[1,0] = shortSword
invSlot[2,0] = choose(shortSword,dagger,knife,roundShield,emptySlot)
invSlot[3,0] = choose(shortbow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

life = 2
classLife = .25
stamina = 6
classStamina = .35

mSkill = 1
rSkill = 1
cSkill = 1
classMSkill = .3
classRSkill = .3
classCSkill = .3

cunning += 2
grace += 1
//Talent
talent[0,0] = choose(treeMobility)
talent[0,5] = 1
talent[1,0] = choose(treeThievery,treeStreetwise)
talent[1,5] = 2
break
case 4: 
class = 'Warrior'
invSlot[1,0] = choose(battleAxe,spear,armingSword,mace)
invSlot[2,0] = choose(shortSword,handAxe,roundShield,squareShield,heaterShield)
invSlot[3,0] = choose(shortbow,longBow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = chainmail

life = 6
classLife = .35
stamina = 4
classStamina = .3

mSkill = 3
rSkill = 3
cSkill = 1
classMSkill = .5
classRSkill = .5
classCSkill = .3

might += 2
will += 1
//Talent
talent[0,0] = choose(treeStrength,treeDiscipline,treeToughness,treeMartial)
talent[0,5] = 2
break
}

#define detailGen
firstName = script_execute(argument0,gender)
lastName = script_execute(race,1)
