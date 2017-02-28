#define bludgeons
//Script Group of Bludgeons

#define lightMace
iSpr = spr_lightMace
iDmg = 3.6
iDmgRng = .3
iType = 'Impact'
iStrMult = .30
iPen = 1
iSpd = 1.40

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_lgtMace
name = 'Light Mace'
ttType = itemTypeWeapon
tooltip = "A small dense mace."
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
onHit[onHitSize,0] = wepsklStagger
onHit[onHitSize,1] = 'Stagger'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define mace
iSpr = spr_mace
iDmg = 5.0
iDmgRng = .3
iType = 'Impact'
iStrMult = .30
iPen = 1
iSpd = 1.15

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_mace
name = 'Mace'
ttType = itemTypeWeapon
tooltip = "A heavy mace."
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
onHit[onHitSize,0] = wepsklSkullcrack
onHit[onHitSize,1] = 'Skull Crack'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 1
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define maul
iSpr = spr_maul
iDmg = 7.5
iDmgRng = .3
iType = 'Impact'
iStrMult = .30
iPen = 1
iSpd = 0.85

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_maul
name = 'Maul'
ttType = itemTypeWeapon
tooltip = "A powerful maul."
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
greatWeaponSize = 3
threat = true

//Skill
onHit[onHitSize,0] = wepsklSkullcrack
onHit[onHitSize,1] = 'Skull Crack'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 2
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define hammer
iSpr = spr_hammer
iDmg = 4.0
iDmgRng = .3
iType = 'Piercing'
iStrMult = .30
iPen = 10
iSpd = 1.20

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_hammer
name = 'Hammer'
ttType = itemTypeWeapon
tooltip = "A strong hammer"
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
onHit[onHitSize,0] = wepsklShatter
onHit[onHitSize,1] = 'Shatter'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 4
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define warhammer
iSpr = spr_warhammer
iDmg = 6.5
iDmgRng = .3
iType = 'Piercing'
iStrMult = .30
iPen = 14
iSpd = 0.80

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_warhammer
name = 'Warhammer'
ttType = itemTypeWeapon
tooltip = "A mighty warhammer."
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
greatWeaponSize = 3
threat = true

//Skill
onHit[onHitSize,0] = wepsklShatter
onHit[onHitSize,1] = 'Shatter'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 2
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define staff
iSpr = spr_staff
iDmg = 3.0
iDmgRng = .3
iType = 'Impact'
iStrMult = .25
iPen = 1
iSpd = 1.4

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_staff
name = 'Staff'
ttType = itemTypeWeapon
tooltip = "A traveller's staff."
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

greatWeapon = true
greatWeaponSize = 3
threat = true
reach = 2

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
