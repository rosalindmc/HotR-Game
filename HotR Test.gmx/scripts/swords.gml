#define swords
//Script Group of Swords

#define knife
iSpr = spr_knife
iDmg = 2.4
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
tooltip = "A small knife."
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

autoHandedness()
threat = true

//Skill
onWound[onWoundSize,0] = wepsklRend
onWound[onWoundSize,1] = 'Rend'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 1
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 30
onWoundSize += 1
break
}

#define dagger
iSpr = spr_dagger
iDmg = 2.4
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
tooltip = "A sharp dagger."
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

autoHandedness()
threat = true

//Skill
onHit[onHitSize,0] = wepsklBackstab
onHit[onHitSize,1] = 'Backstab'
onHit[onHitSize,2] = 30
onHit[onHitSize,3] = 1
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define epee
iSpr = spr_epee
iDmg = 3.0
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
tooltip = "A small light thrusting sword."
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
}

#define shortSword
iSpr = spr_shortSword
iDmg = 3.0
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
tooltip = "A short sword."
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
onHit[onHitSize,1] = 'Thrust'
onHit[onHitSize,2] = i
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define armingSword
iSpr = spr_armSword
iDmg = 4.0
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
tooltip = "An arming sword."
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
onHit[onHitSize,1] = 'Thrust'
onHit[onHitSize,2] = i
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define sabre
iSpr = spr_sabre
iDmg = 4.0
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
tooltip = "An elegant sabre"
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
}

#define rapier
iSpr = spr_rapier
iDmg = 4.0
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
tooltip = "A thrusting rapier"
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
}

#define bastardSword
iSpr = spr_bstdSword
iDmg = 4.4
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
tooltip = "An oversized one handed sword."
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
}

#define longSword
iSpr = spr_longSword
iDmg = 5.0
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
tooltip = "A long sword."
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
onHit[onHitSize,1] = 'Thrust'
onHit[onHitSize,2] = i
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define greatSword
iSpr = spr_greatSword
iDmg = 6.0
iDmgRng = .2
iType = typeRend
iStrMult = 1.2
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
tooltip = "A sword so long its practically a polearm."
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
onHit[onHitSize,1] = 'Thrust'
onHit[onHitSize,2] = i
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break
}