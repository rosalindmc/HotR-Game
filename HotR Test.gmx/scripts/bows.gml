#define bows
//Script Group of Bows

#define longBow
iSpr = spr_longBow
iDmg = 8.0
iDmgRng = .3
iType = 'Piercing'
iStrMult = .30
iPen = 1
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
wepType[i] = ranged
wepAnimType[i] = typeAxe

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = .5
wepStrMult[i] = 1
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = iSpr
break
}

#define shortbow
iSpr = spr_shortBow
iDmg = 5.0
iDmgRng = .3
iType = 'Piercing'
iStrMult = .20
iPen = 1
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
wepType[i] = ranged
wepAnimType[i] = typeAxe

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = .5
wepStrMult[i] = 1
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = iSpr
break
}