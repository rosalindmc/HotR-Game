#define polearms
//Script Group of Polearms

#define shortSpear
iSpr = spr_shortSpear
iDmg = 2.8
iDmgRng = .5
iType = 'Piercing'
iStrMult = .25
iPen = 2
iSpd = 1.50

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_shortSpear
name = 'Short Spear'
ttType = itemTypeWeapon
tooltip = "A short spear."
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
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr

break
}

#define spear
iSpr = spr_spear
iDmg = 3.4
iDmgRng = .5
iType = 'Piercing'
iStrMult = .35
iPen = 2
iSpd = 1.30

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_spear
name = 'Spear'
ttType = itemTypeWeapon
tooltip = "A common spear."
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
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr

break
}

#define pike
iSpr = spr_pike
iDmg = 6.00
iDmgRng = .5
iType = 'Piercing'
iStrMult = .40
iPen = 3
iSpd = 0.85

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_pike
name = 'Pike'
ttType = itemTypeWeapon
tooltip = "A hefty pike."
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
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr

greatWeapon = true
break
}

#define halberd
iSpr = spr_halberd
iDmg = 6.50
iDmgRng = .3
iType = 'Rending'
iStrMult = .40
iPen = 2
iSpd = 0.90

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_halberd
name = 'Halberd'
ttType = itemTypeWeapon
tooltip = "A powerful halberd."
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
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr

greatWeapon = true
break
}