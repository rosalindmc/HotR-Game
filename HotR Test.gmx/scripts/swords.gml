#define swords
//Script Group of Swords

#define knife
iSpr = spr_knife
iDmg = 2.0
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 1
iSpd = 2.00

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_knife
name = 'Knife'
ttType = itemTypeWeapon
tooltip = "A small knife."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = lightWeaponProficiency  
break

case 1:     //Called when owned
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
iDmg = 2.0
iDmgRng = .5
iType = 'Piercing'
iStrMult = .25
iPen = 8
iSpd = 1.85

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_dagger
name = 'Dagger'
ttType = itemTypeWeapon
tooltip = "A sharp dagger."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = lightWeaponProficiency  
break

case 1:     //Called when owned
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

#define shortSword
iSpr = spr_shortSword
iDmg = 3.0
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 1
iSpd = 1.50

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_shtSword
name = 'Short Sword'
ttType = itemTypeWeapon
tooltip = "A short sword."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = lightWeaponProficiency  
break

case 1:     //Called when owned
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

#define armingSword
iSpr = spr_armSword
iDmg = 4.0
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 1
iSpd = 1.30

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_armSword
name = 'Arming Sword'
ttType = itemTypeWeapon
tooltip = "An arming sword."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = mediumWeaponProficiency  
break

case 1:     //Called when owned
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

#define sabre
iSpr = spr_sabre
iDmg = 4.0
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 3
iSpd = 1.35

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_sabre
name = 'Sabre'
ttType = itemTypeWeapon
tooltip = "An elegant sabre"
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = mediumWeaponProficiency  
break

case 1:     //Called when owned
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

#define bastardSword
iSpr = spr_bstdSword
iDmg = 4.4
iDmgRng = .3
iType = 'Rending'
iStrMult = .3
iPen = 1
iSpd = 1.10

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_bstSword
name = 'Bastard Sword'
ttType = itemTypeWeapon
tooltip = "An oversized one handed sword."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = mediumWeaponProficiency  
break

case 1:     //Called when owned
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

#define greatSword
iSpr = spr_greatSword
iDmg = 6.5
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 2
iSpd = 1.00

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_grtSword
name = 'Great Sword'
ttType = itemTypeWeapon
tooltip = "A great sword."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = heavyWeaponProficiency  
break

case 1:     //Called when owned
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

greatWeapon = true
threat = true

//Skill
onHit[onHitSize,0] = wepsklGuard
onHit[onHitSize,1] = 'Guard'
onHit[onHitSize,2] = 20
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}