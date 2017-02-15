#define bows
//Script Group of Bows

#define longBow
iSpr = spr_longBow
iDmg = 5.0
iDmgRng = .3
iType = 'Piercing'
iStrMult = .25
iPen = 3
iSpd = 0.60

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_longBow
name = 'Long Bow'
ttType = itemTypeRanged
tooltip = "A long bow."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = basicRangedProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepClass[i] = ranged
wepAnimType[i] = typeAxe

wepRPow[i] = iDmg
wepRType[i] = iType
wepRPowRng[i] = .5
wepRStrMult[i] = iStrMult
wepRStamina[i] = iStrMult
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = iSpr
break
}

#define shortbow
iSpr = spr_shortBow
iDmg = 4.0
iDmgRng = .3
iType = 'Piercing'
iStrMult = .25
iPen = 2
iSpd = 0.80

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_shortBow
name = 'Short Bow'
ttType = itemTypeRanged
tooltip = "A short bow for hunting."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = basicRangedProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepClass[i] = ranged
wepAnimType[i] = typeAxe

wepRPow[i] = iDmg
wepRType[i] = iType
wepRPowRng[i] = .5
wepRStrMult[i] = iStrMult
wepRStamina[i] = iStrMult
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = iSpr
break
}
