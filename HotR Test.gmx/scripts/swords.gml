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
break
}