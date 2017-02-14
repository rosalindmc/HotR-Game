#define bludgeons
//Script Group of Bludgeons

#define lightMace
iSpr = spr_lightMace
iDmg = 3.6
iDmgRng = .3
iType = 'Impact'
iStrMult = .25
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
wepType[i] = melee
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
break
}

#define mace
iSpr = spr_mace
iDmg = 5.0
iDmgRng = .3
iType = 'Impact'
iStrMult = .35
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
wepType[i] = melee
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
break
}

#define hammer
iSpr = spr_hammer
iDmg = 4.0
iDmgRng = .3
iType = 'Piercing'
iStrMult = .20
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
wepType[i] = melee
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
break
}

#define warhammer
iSpr = spr_warhammer
iDmg = 6.5
iDmgRng = .3
iType = 'Piercing'
iStrMult = .40
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
wepType[i] = melee
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
break
}

#define maul
iSpr = spr_maul
iDmg = 7.5
iDmgRng = .3
iType = 'Impact'
iStrMult = .40
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
wepType[i] = melee
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
break
}