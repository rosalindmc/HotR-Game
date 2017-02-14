#define axes


#define handAxe
iSpr = spr_handAxe
iDmg = 3.0
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 5
iSpd = 1.50


switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_handAxe
name = 'Hand Axe'
ttType = itemTypeWeapon
tooltip = "A light hatchet."
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

#define battleAxe
iSpr = spr_battleAxe
iDmg = 4.0
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 6
iSpd = 1.25

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_battleAxe
name = 'Battle Axe'
ttType = itemTypeWeapon
tooltip = "A one handed axe."
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

#define greatAxe
iSpr = spr_greatAxe
iDmg = 6.5
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 7
iSpd = 1.00

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_greatAxe
name = 'Great Axe'
ttType = itemTypeWeapon
tooltip = "A two handed axe."
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