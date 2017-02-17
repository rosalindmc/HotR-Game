#define classList
switch(irandom(11))
{
    case 0: 
    case 1: 
    case 2:
    case 3:
    case 4: 
    case 5: return class_warrior break
    case 6:
    case 7: 
    case 8: return class_thief break
    case 9: return class_adventurer break
    case 10: return class_duelist break
    case 11: return class_wizard break
}
/*
    case 12:
    case 13: 
    case 14: return race_orc break
    case 15: return race_tiefling break
}

#define class_wizard
className = 'Wizard'

//Inventory
invSlot[1,0] = choose(greatSword,armingSword,staff)
invSlot[3,0] = choose(shortbow,longBow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

//Class Stats and Progression
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

#define class_duelist
className = 'Duelist'
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


#define class_adventurer
className = 'Adventurer'

//Inventory
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

#define class_thief
className = 'Thief'

//Inventory
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

#define class_warrior
className = 'Warrior'

//Inventory
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
#define class_thrall
className = 'Thrall'

//Inventory
invSlot[1,0] = choose(battleAxe,spear,armingSword)
invSlot[2,0] = choose(shortSword,handAxe,roundShield,squareShield,heaterShield)
invSlot[3,0] = choose(shortbow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

life = 0
classLife = .3
stamina = 0
classStamina = .3

mSkill = 0
rSkill = 1
cSkill = 0
classMSkill = .4
classRSkill = .4
classCSkill = .3

cunning -= 2
fellowship -= 2
mook = true
