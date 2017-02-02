#define createCharacter
//Character Creator Script

//Race
if race = -4
{
    raceGen()
    detailGen()
}

//Attributes must happen after Race
attributeGen()

//Temp
initializeHumanoid()
scr_charactergenerator()

//Class
if class = -4
{
    classGen()
}

//Skills and Talents
//Spells
//Fashion
fashionInitialize()

//Inventory
//Level Up

#define raceGen
switch(irandom(5))
{
    case 0: 
    case 1: 
    case 2:
    case 3:
    case 4: 
    case 5: race = race_highelf break
    /*
    case 6:
    case 7: 
    case 8: race = 'Irunian Human' break
    case 9: race = 'Northern Human' break
    case 10: race = 'Dwarf' break
    case 11: race = 'Halfling' break
    case 12:
    case 13: 
    case 14: race = 'Orc' break
    case 15:
    case 16: 
    case 17:
    case 18:
    case 19: race = 'Tiefling' break
    */
}

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
invSlot[1,0] = armingSword
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
talent[0,0] = choose(treeInsight,treeDiscipline,treeLeadership)
talent[0,5] = 2

break
case 1: 
class = 'Duelist'
invSlot[1,0] = sabre
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
talent[0,0] = choose(treeMartial,treeInsight,treeDaring,treeMobility)
talent[0,5] = 2

break
case 2: 
class = 'Adventurer'
invSlot[1,0] = greatSword
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
talent[0,0] = choose(treeInsight,treeDaring,treeSubterfuge,treeMobility)
talent[0,5] = 2
break
case 3: 
class = 'Thief'
invSlot[1,0] = shortSword
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
talent[0,0] = choose(treeInsight,treeSubterfuge,treeMobility)
talent[0,5] = 2
break
case 4: 
class = 'Warrior'
invSlot[1,0] = battleAxe
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
//Temp Names
if firstName = -4
{    
    firstName = choose("Gae","Mop","Quar","She","Be")+choose("ah","or","gash","ivik","k","alia","rae")
}

if lastName = -4
{
    lastName = choose("Frost","Strong","Kind","Green","Free","Swift","Blue")+choose("blade","storm","heart","hilt","foot","man","tree")
}

script_execute(race,0)
//Gender

//Body Type