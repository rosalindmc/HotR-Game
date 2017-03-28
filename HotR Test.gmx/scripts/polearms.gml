#define polearms
//Script Group of Polearms

#define shortSpear
iSpr = spr_shortSpear
iDmg = 3.8
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 2
iSpd = 1.50
iSize = 1
iName = 'Short Spear'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_shortSpear
name = iName
ttType = itemTypeWeapon
tooltip = "A short spear."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency) 
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
onWound[onWoundSize,0] = wepsklImpale
onWound[onWoundSize,1] = 'Impale'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 0
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 10
onWoundSize += 1
break
}

#define spear
iSpr = spr_spear
iDmg = 4.6
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 2
iSpd = 1.30
iSize = 2
iName = 'Spear'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_spear
name = iName
ttType = itemTypeWeapon
tooltip = "A common spear."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency) 
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
reach = 2.5
threat = true

//Skill
onWound[onWoundSize,0] = wepsklImpale
onWound[onWoundSize,1] = 'Impale'
onWound[onWoundSize,2] = 15
onWound[onWoundSize,3] = 0
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 10
onWoundSize += 1
break
}

#define pike
iSpr = spr_pike
iDmg = 5.4
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 3
iSpd = 0.90
iSize = 3
iName = 'Pike'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_pike
name = iName
ttType = itemTypeWeapon
tooltip = "A hefty pike."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency) 
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
greatWeaponSize = 4
reach = 3.5
threat = true

//Skill
onWound[onWoundSize,0] = wepsklImpale
onWound[onWoundSize,1] = 'Impale'
onWound[onWoundSize,2] = 20
onWound[onWoundSize,3] = 0
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 10
onWoundSize += 1
break
}

#define halberd
iSpr = spr_halberd
iDmg = 6.6
iDmgRng = .2
iType = typeRend
iStrMult = 1
iPen = 2
iSpd = 0.90
iSize = 3
iName = 'Halberd'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_halberd
name = iName
ttType = itemTypeWeapon
tooltip = "A powerful halberd."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency) 
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

reach = 3
autoHandedness()
greatWeaponSize = 4
threat = true

//Skill
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 4
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 15
onWoundSize += 1

onHit[onHitSize,0] = wepSlashPierce
onHit[onHitSize,1] = 'Thrust'
onHit[onHitSize,2] = i
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break
}
