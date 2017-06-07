#define axes


#define handAxe
iSpr = spr_handAxe
iDmg = 4.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 5
iSpd = 1.50
iSize = 1
iName = 'Hand Axe'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_handAxe
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 10 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(heavyWeaponProficiency)
break

case 1:     //Called when owned
wepName[i] = iName
break

case 2:     //Called when equipped
wepClass[i] = melee
wepAnimType[i] = typeAxe

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = iDmgRng
wepStrMult[i] = iStrMult
wepStamina[i] = iStrMult
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr
wepPartMin[i] = 6
wepPartMax[i] = 8

autoHandedness()
threat = true

//Skill
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 3
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 10
onWoundSize += 1
break

//Main Material
case 3:
matNum = 1
produce = 1
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 1
produce = 1
return matGrpWood
break
}

#define battleAxe
iSpr = spr_battleAxe
iDmg = 5.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 6
iSpd = 1.25
iSize = 2
iName = 'Battle Axe'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_battleAxe
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 15 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(heavyWeaponProficiency)
break

case 1:     //Called when owned
wepName[i] = iName
break

case 2:     //Called when equipped
wepClass[i] = melee
wepAnimType[i] = typeAxe

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = iDmgRng
wepStrMult[i] = iStrMult
wepStamina[i] = iStrMult
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr
wepPartMin[i] = 9
wepPartMax[i] = 11

autoHandedness()
greatWeaponSize = 3
threat = true

//Skill
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 3
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 15
onWoundSize += 1
break

//Main Material
case 3:
matNum = 1
produce = 1
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 2
produce = 1
return matGrpWood
break
}

#define greatAxe
iSpr = spr_greatAxe
iDmg = 6.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 7
iSpd = 1.00
iSize = 3
iName = 'Great Axe'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_greatAxe
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 20 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(heavyWeaponProficiency)
break

case 1:     //Called when owned
wepName[i] = iName
break

case 2:     //Called when equipped
wepClass[i] = melee
wepAnimType[i] = typeAxe

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = iDmgRng
wepStrMult[i] = iStrMult
wepStamina[i] = iStrMult
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr
wepPartMin[i] = 11
wepPartMax[i] = 14

autoHandedness()
greatWeaponSize = 3
threat = true

//Skill
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 3
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 20
onWoundSize += 1
break

//Main Material
case 3:
matNum = 2
produce = 1
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 2
produce = 1
return matGrpWood
break
}
