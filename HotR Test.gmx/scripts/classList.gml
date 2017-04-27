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
    case 12: return class_cultist break
    case 13: 
    case 14: return race_orc break
    case 15: return race_tiefling break
}

#define class_wizard
className = 'Wizard'

//Inventory
invSlot[1,0] = choose(greatSword,armingSword,staff)
invSlot[3,0] = choose(shortBow,longBow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

if wepSize = 1
{
    invSlot[1,0] = choose(armingSword,staff)
    invSlot[3,0] = choose(shortBow,emptySlot,emptySlot,emptySlot)
}

//Class Stats and Progression
life += 0
classLife = .10
stamina += 4
classStamina = .20

mSkill = 1
rSkill = 1
cSkill = 3
classMSkill = .15
classRSkill = .15
classCSkill = .25

//Talent
talent[0,0] = choose(treeInsight,treeDiscipline)
talent[0,5] = 1
talent[1,0] = choose(treeMedicine,treePerform,treeDiplomacy,treeAlchemy,treeKnowledge)
talent[1,5] = 1

//Proficiencies Temp
itemProf[1] = mediumWeaponProficiency
itemProf[2] = heavyWeaponProficiency
itemProf[3] = clothingProficiency
itemProf[4] = basicRangedProficiency


#define class_duelist
className = 'Duelist'
invSlot[1,0] = choose(sabre,rapier)
invSlot[2,0] = choose(dagger,epee,roundShield,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = choose(robe,dress,chainShirt)

if wepSize = 1
{
    invSlot[1,0] = epee
}


life += 2
classLife = .15
stamina += 2
classStamina = .15

mSkill = 3
rSkill = 2
cSkill = 1
classMSkill = .25
classRSkill = .20
classCSkill = .15

//Talent
talent[0,0] = choose(treeMartial,treeDueling,treeMobility,treeInsight)
talent[0,5] = 2
talent[1,0] = choose(treeDiplomacy,treeStreetwise,treePerform)
talent[1,5] = 1

//Proficiencies Temp
itemProf[1] = mediumWeaponProficiency
itemProf[2] = clothingProficiency
itemProf[3] = lightArmourProficiency
itemProf[4] = pistolProficiency
itemProf[5] = shieldProficiency

#define class_adventurer
className = 'Adventurer'

//Inventory
invSlot[1,0] = choose(longSword,maul,greatAxe,warhammer)
invSlot[3,0] = choose(shortBow,crossbow,longBow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = choose(robe,chainShirt)

if wepSize = 1
{
    invSlot[1,0] = choose(bastardSword,mace,battleAxe,hammer)
    invSlot[3,0] = choose(shortBow,emptySlot,emptySlot)
}


life += 2
classLife = .15
stamina += 4
classStamina = .20

mSkill = 2
rSkill = 2
cSkill = 1
classMSkill = .20
classRSkill = .20
classCSkill = .15

//Talent
talent[0,0] = choose(treeInsight,treeMobility,treeDueling,treeSubterfuge)
talent[0,5] = 2
talent[1,0] = choose(treeDiplomacy,treeSurvival)
talent[1,5] = 1

//Proficiencies Temp
itemProf[1] = mediumWeaponProficiency
itemProf[2] = heavyWeaponProficiency
itemProf[3] = clothingProficiency
itemProf[4] = lightArmourProficiency
itemProf[5] = pistolProficiency
itemProf[6] = basicRangedProficiency
itemProf[7] = firearmProficiency
itemProf[8] = shieldProficiency



#define class_thief
className = 'Thief'

//Inventory
invSlot[1,0] = shortSword
invSlot[2,0] = choose(shortSword,dagger,knife,roundShield,emptySlot)
invSlot[3,0] = choose(shortBow,crossbow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = robe

if wepSize = 1
{
    invSlot[3,0] = choose(shortBow,emptySlot,emptySlot)
}

life += 0
classLife = .10
stamina += 4
classStamina = .20

mSkill = 1
rSkill = 1
cSkill = 1
classMSkill = .15
classRSkill = .15
classCSkill = .15

//Talent
talent[0,0] = choose(treeMobility,treeSubterfuge,treeInsight)
talent[0,5] = 1
talent[1,0] = choose(treeThievery,treeStreetwise)
talent[1,5] = 2

itemProf[1] = mediumWeaponProficiency
itemProf[2] = clothingProficiency
itemProf[3] = pistolProficiency
itemProf[4] = basicRangedProficiency
itemProf[5] = shieldProficiency

#define class_warrior
className = 'Warrior'

//Inventory
invSlot[1,0] = choose(battleAxe,spear,armingSword,mace)
invSlot[2,0] = choose(shortSword,handAxe,roundShield,squareShield,heaterShield)
invSlot[3,0] = choose(shortBow,crossbow,longBow,emptySlot,emptySlot,emptySlot)
invSlot[4,0] = choose(chainMail,chainShirt)

if wepSize = 1
{
    invSlot[1,0] = choose(handAxe,shortSpear,shortSword,lightMace,epee)
    invSlot[2,0] = choose(knife,handAxe,dagger,roundShield,heaterShield)
    invSlot[3,0] = choose(shortBow,emptySlot,emptySlot)
}

life += 4
classLife = .20
stamina += 2
classStamina = .15

mSkill = 3
rSkill = 3
cSkill = 1
classMSkill = .25
classRSkill = .25
classCSkill = .15

//Talent
talent[0,0] = choose(treeStrength,treeDiscipline,treeToughness,treeMartial)
talent[0,5] = 2

itemProf[1] = mediumWeaponProficiency
itemProf[2] = heavyWeaponProficiency
itemProf[3] = clothingProficiency
itemProf[4] = lightArmourProficiency
itemProf[5] = heavyArmourProficiency
itemProf[6] = basicRangedProficiency
itemProf[7] = polearmProficiency
itemProf[8] = shieldProficiency
itemProf[9] = largeShieldProficiency
