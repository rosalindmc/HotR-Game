#define axes


#define handAxe
iSpr = spr_handAxe
iDmg = 3.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 5
iSpd = 1.50
iSize = 1
iName = 'Hand Axe'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_handAxe
name = iName
ttType = itemTypeWeapon
tooltip = "A light hatchet."
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
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 2
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 15
onWoundSize += 1
break
}

#define battleAxe
iSpr = spr_battleAxe
iDmg = 4.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 6
iSpd = 1.25
iSize = 2
iName = 'Battle Axe'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_battleAxe
name = iName
ttType = itemTypeWeapon
tooltip = "A one handed axe."
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
wepDType[i] = iType
wepPowRng[i] = iDmgRng
wepStrMult[i] = iStrMult
wepStamina[i] = iStrMult
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr

autoHandedness()
greatWeaponSize = 3
threat = true

//Skill
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 3
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 15
onWoundSize += 1
break
}

#define greatAxe
iSpr = spr_greatAxe
iDmg = 5.0
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 7
iSpd = 1.00
iSize = 3
iName = 'Great Axe'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_greatAxe
name = iName
ttType = itemTypeWeapon
tooltip = "A two handed axe."
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
greatWeaponSize = 3
threat = true

//Skill
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 4
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 15
onWoundSize += 1
break
}