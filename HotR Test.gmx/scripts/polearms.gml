#define polearms
//Script Group of Polearms

#define shortSpear
iSpr = spr_shortSpear
iDmg = 3.8
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 2
iSpd = 1.50
iSize = 1
iName = 'Short Spear'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_shortSpear
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Impale','Impale#On Wound: 10 % chance to IMMOBILIZE for 10 seconds. IMMOBILIZED characters cannot move or dodge and have no zone of control',6,c_yellow)
addItemTooltip('Elegant','Elegant#This weapon is 20 % less effected by Might and uses 20 % less stamina to attack',4,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency) 
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
wepPartMax[i] = 15

autoHandedness()
greatWeaponSize = 3
threat = true

//Skill
onWound[onWoundSize,0] = wepsklImpale
onWound[onWoundSize,1] = 'Impale'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 0
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

#define spear
iSpr = spr_spear
iDmg = 4.6
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 2
iSpd = 1.30
iSize = 2
iName = 'Spear'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_spear
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Impale','Impale#On Wound: 15 % chance to IMMOBILIZE for 10 seconds. IMMOBILIZED characters cannot move or dodge and have no zone of control',6,c_yellow)
addItemTooltip('Elegant','Elegant#This weapon is 20 % less effected by Might and uses 20 % less stamina to attack',4,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency) 
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
wepPartMin[i] = 18
wepPartMax[i] = 24

autoHandedness()
greatWeaponSize = 3
reach = 2.5
threat = true

//Skill
onWound[onWoundSize,0] = wepsklImpale
onWound[onWoundSize,1] = 'Impale'
onWound[onWoundSize,2] = 15
onWound[onWoundSize,3] = 0
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
matNum = 2
produce = 1
return matGrpWood
break
}

#define pike
iSpr = spr_pike
iDmg = 5.4
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 3
iSpd = 0.90
iSize = 3
iName = 'Pike'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_pike
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Impale','Impale#On Wound: 20 % chance to IMMOBILIZE for 10 seconds. IMMOBILIZED characters cannot move or dodge and have no zone of control',6,c_yellow)
addItemTooltip('Elegant','Elegant#This weapon is 20 % less effected by Might and uses 20 % less stamina to attack',4,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency) 
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
wepPartMin[i] = 23
wepPartMax[i] = 31

autoHandedness()
greatWeaponSize = 4
reach = 3.5
threat = true

//Skill
onWound[onWoundSize,0] = wepsklImpale
onWound[onWoundSize,1] = 'Impale'
onWound[onWoundSize,2] = 20
onWound[onWoundSize,3] = 0
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
matNum = 3
produce = 1
return matGrpWood
break
}

#define halberd
iSpr = spr_halberd
iDmg = 6.6
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 2
iSpd = 0.90
iSize = 3
iName = 'Halberd'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_halberd
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 15 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Stabbing Point','Stabbing Point#This weapon inflicts Pierce damage if it is more advantageous',4,c_green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency) 
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
wepPartMin[i] = 19
wepPartMax[i] = 26

reach = 3
autoHandedness()
greatWeaponSize = 4
threat = true

//Skill
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 3
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 15
onWoundSize += 1

onHit[onHitSize,0] = wepSlashPierce
onHit[onHitSize,1] = 'Stabbing Point'
onHit[onHitSize,2] = i
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break

//Main Material
case 3:
matNum = 2
produce = 1
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 3
produce = 1
return matGrpWood
break
}
