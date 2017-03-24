#define bows
//Script Group of Bows

#define longBow
iSpr = spr_longBow
iDmg = 4.0
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 3
iSpd = 0.60
iSize = 2

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
wepAnimType[i] = typeBow

wepRPow[i] = iDmg
wepRType[i] = iType
wepRPowRng[i] = .3
wepRStrMult[i] = iStrMult
wepRStamina[i] = iStrMult*2
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = iSpr

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

#define shortBow
iSpr = spr_shortBow
iDmg = 3.0
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 2
iSpd = 0.80
iSize = 1

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
wepAnimType[i] = typeBow

wepRPow[i] = iDmg
wepRType[i] = iType
wepRPowRng[i] = .3
wepRStrMult[i] = iStrMult
wepRStamina[i] = iStrMult*1.5
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = iSpr

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

#define crossbow
iSpr = spr_crossbow
iDmg = 8.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 8
iSpd = 0.40
iSize = 2

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_crossbow
name = 'Crossbow'
ttType = itemTypeRanged
tooltip = "A powerful crossbow."
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
wepAnimType[i] = typeCrossbow

wepRPow[i] = iDmg
wepRType[i] = iType
wepRPowRng[i] = .3
wepRStrMult[i] = iStrMult
wepRStamina[i] = 2
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = iSpr

//Skill
onHit[onHitSize,0] = wepsklStagger
onHit[onHitSize,1] = 'Stagger'
onHit[onHitSize,2] = 20
onHit[onHitSize,3] = 10
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}