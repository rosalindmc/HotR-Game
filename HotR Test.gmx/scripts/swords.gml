#define swords
//Script Group of Swords

#define knife
iSpr = spr_knife
iDmg = 3.4
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 1
iSpd = 2.00
iSize = 0
iName = 'Knife'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_knife
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Bleed','Bleed#On Wound: 10 % chance to BLEED for 30 seconds. BLEED inflicts 1 Blood damage and 1 stamina loss every 5 seconds',5,c_yellow)
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
wepPartMin[i] = 2
wepPartMax[i] = 7

autoHandedness()
threat = true

//Skill
onWound[onWoundSize,0] = wepsklBleed
onWound[onWoundSize,1] = 'Bleed'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 1
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 30
onWoundSize += 1
break

//Main Material
case 3:
matNum = 1
produce = 2
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 1
produce = 2
return matGrpLeather
break
}

#define dagger
iSpr = spr_dagger
iDmg = 3.4
iDmgRng = .3
iType = typePierce
iStrMult = 1
iPen = 8
iSpd = 1.85
iSize = 0
iName = 'Dagger'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_dagger
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Backstab','Backstab#On Flank Hit: 30 % chance to inflict +2 POW',3,c_yellow)
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
wepPartMin[i] = 3
wepPartMax[i] = 7

autoHandedness()
threat = true

//Skill
onHit[onHitSize,0] = wepsklBackstab
onHit[onHitSize,1] = 'Backstab'
onHit[onHitSize,2] = 30
onHit[onHitSize,3] = 2
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break

//Main Material
case 3:
matNum = 2
produce = 2
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 1
produce = 2
return matGrpLeather
break
}

#define epee
iSpr = spr_epee
iDmg = 4.0
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 6
iSpd = 1.4
iSize = 1
iName = 'Epee'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_epee
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Guard','Guard#On Hit: 10 % chance to gain a Block Charge',3,c_yellow)
addItemTooltip('Elegant','Elegant#This weapon is 20 % less effected by Might and uses 20% less stamina to attack',4,green)
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
wepPartMin[i] = 3
wepPartMax[i] = 18

autoHandedness()
threat = true

//Skill
onHit[onHitSize,0] = wepsklGuard
onHit[onHitSize,1] = 'Guard'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
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
return matGrpLeather
break
}

#define shortSword
iSpr = spr_shortSword
iDmg = 4.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 1
iSpd = 1.50
iSize = 1
iName = 'Short Sword'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_shtSword
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Flurry','Flurry#On Hit: 10 % chance to make our next action come 0.5 seconds faster',4,c_yellow)
addItemTooltip('Stabbing Point','Stabbing Point#This weapon inflicts Pierce damage if it is more advantageous',4,green)
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
wepPartMin[i] = 3
wepPartMax[i] = 12

autoHandedness()
threat = true

//Skill
onHit[onHitSize,0] = wepsklFlurry
onHit[onHitSize,1] = 'Flurry'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = .5
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1

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
matNum = 1
produce = 1
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 1
produce = 1
return matGrpLeather
break
}

#define armingSword
iSpr = spr_armSword
iDmg = 5.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 1
iSpd = 1.30
iSize = 2
iName = 'Arming Sword'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_armSword
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Guard','Guard#On Hit: 10 % chance to gain a Block Charge',3,c_yellow)
addItemTooltip('Stabbing Point','Stabbing Point#This weapon inflicts Pierce damage if it is more advantageous',4,green)
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
wepPartMin[i] = 4
wepPartMax[i] = 24

autoHandedness()
threat = true

//Skill
onHit[onHitSize,0] = wepsklGuard
onHit[onHitSize,1] = 'Guard'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1

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
matNum = 1
produce = 1
return matGrpLeather
break
}

#define sabre
iSpr = spr_sabre
iDmg = 5.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 1
iSpd = 1.35
iSize = 2
iName = 'Sabre'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_sabre
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Flurry','Flurry#On Hit: 10 % chance to make our next action come 0.5 seconds faster',4,c_yellow)
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
wepPartMin[i] = 3
wepPartMax[i] = 25

autoHandedness()
threat = true

//Skill
onHit[onHitSize,0] = wepsklFlurry
onHit[onHitSize,1] = 'Flurry'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = .5
onHit[onHitSize,4] = i
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
matNum = 1
produce = 1
return matGrpLeather
break
}

#define rapier
iSpr = spr_rapier
iDmg = 5.0
iDmgRng = .3
iType = typePierce
iStrMult = 1
iPen = 4
iSpd = 1.1
iSize = 2
iName = 'Rapier'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_rapier
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Guard','Guard#On Hit: 15 % chance to gain a Block Charge',3,c_yellow)
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
wepPartMin[i] = 3
wepPartMax[i] = 25

autoHandedness()
threat = true

//Skill
onHit[onHitSize,0] = wepsklGuard
onHit[onHitSize,1] = 'Guard'
onHit[onHitSize,2] = 15
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
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
matNum = 1
produce = 1
return matGrpLeather
break
}

#define bastardSword
iSpr = spr_bstdSword
iDmg = 5.4
iDmgRng = .2
iType = typeRend
iStrMult = 1.2
iPen = 1
iSpd = 1.10
iSize = 2
iName = 'Bastard Sword'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_bstSword
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Guard','Guard#On Hit: 15 % chance to gain a Block Charge',3,c_yellow)
addItemTooltip('Hefty','Hefty#This weapon is 20 % more effected by Might and uses 20 % more stamina to attack',5,green)
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
wepPartMin[i] = 4
wepPartMax[i] = 26

autoHandedness()
threat = true

//Skill
onHit[onHitSize,0] = wepsklGuard
onHit[onHitSize,1] = 'Guard'
onHit[onHitSize,2] = 15
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break

//Main Material
case 3:
matNum = 3
produce = 1
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 1
produce = 1
return matGrpLeather
break
}

#define longSword
iSpr = spr_longSword
iDmg = 6.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 2
iSpd = 1.00
iSize = 3
iName = 'Long Sword'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_longSword
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Guard','Guard#On Hit: 20 % chance to gain a Block Charge',3,c_yellow)
addItemTooltip('Stabbing Point','Stabbing Point#This weapon inflicts Pierce damage if it is more advantageous',4,green)
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
wepPartMin[i] = 4
wepPartMax[i] = 29

autoHandedness()
reach = 2
greatWeaponSize = 1
threat = true

//Skill
onHit[onHitSize,0] = wepsklGuard
onHit[onHitSize,1] = 'Guard'
onHit[onHitSize,2] = 20
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1

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
matNum = 3
produce = 1
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 1
produce = 1
return matGrpLeather
break
}

#define greatSword
iSpr = spr_greatSword
iDmg = 7.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 3
iSpd = 0.70
iSize = 3
iName = 'Great Sword'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_grtSword
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Guard','Guard#On Hit: 25 % chance to gain a Block Charge',3,c_yellow)
addItemTooltip('Stabbing Point','Stabbing Point#This weapon inflicts Pierce damage if it is more advantageous',4,green)
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
wepPartMax[i] = 33

autoHandedness()
greatWeaponSize = 2
reach = 2.5
threat = true

//Skill
onHit[onHitSize,0] = wepsklGuard
onHit[onHitSize,1] = 'Guard'
onHit[onHitSize,2] = 25
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1

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
matNum = 4
produce = 1
return matGrpMetal
break

//Secondary Material
case 4:
matNum = 1
produce = 1
return matGrpLeather
break
}
