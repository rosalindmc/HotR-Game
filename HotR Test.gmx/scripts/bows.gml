#define bows
//Script Group of Bows

#define longBow
iSpr = spr_longBow
iDmg = 5.0
iDmgRng = .3
iType = typePierce
iStrMult = 1
iPen = 3
iSpd = 0.60
iSize = 2
iShots = 1
iReloads = 32
iRng = 24
iName = 'Long Bow'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_longBow
name = iName
ttType = itemTypeRanged
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10% chance to CRIPPLE for 15 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Instant Load','Instant Load#This weapon reloads automatically after firing',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = basicRangedProficiency  
break

case 1:     //Called when owned
wepName[i] = iName
maxShots[i] = iShots
maxReloads[i] = iReloads
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
wepRRange[i] = iRng
wepReload[i] = 0

rangeAttack = true
autoLoad = true

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
iDmg = 4.0
iDmgRng = .3
iType = typePierce
iStrMult = .8
iPen = 2
iSpd = 0.80
iSize = 1
iShots = 1
iReloads = 20
iRng = 16
iName = 'Short Bow'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_shortBow
name = iName
ttType = itemTypeRanged
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10% chance to CRIPPLE for 10 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Elegant','Elegant#This weapon is 20% less effected by Might and uses 20% less stamina to attack',4,green)
addItemTooltip('Instant Load','Instant Load#This weapon reloads automatically after firing',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = basicRangedProficiency  
break

case 1:     //Called when owned
wepName[i] = iName
maxShots[i] = iShots
maxReloads[i] = iReloads
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
wepRRange[i] = iRng
wepReload[i] = 0

rangeAttack = true
autoLoad = true

//Weapon Sprites
weaponSprite[i] = iSpr

//Skill
onWound[onWoundSize,0] = wepsklCripple
onWound[onWoundSize,1] = 'Cripple'
onWound[onWoundSize,2] = 10
onWound[onWoundSize,3] = 3
onWound[onWoundSize,4] = i
onWound[onWoundSize,5] = 10
onWoundSize += 1
break
}

#define crossbow
iSpr = spr_crossbow
iDmg = 8.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 4
iSpd = 1
iSize = 2
iShots = 1
iReloads = 20
iRng = 20
iName = 'Crossbow'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_crossbow
name = iName
ttType = itemTypeRanged
addItemTooltip('Skill - Stagger','Stagger#On Hit: 20% chance to DAZE for 5 seconds. DAZED characters have a 50% miss chance',5,c_yellow)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = basicRangedProficiency  
break

case 1:     //Called when owned
wepName[i] = iName
maxShots[i] = iShots
maxReloads[i] = iReloads
break

case 2:     //Called when equipped
wepClass[i] = ranged
wepAnimType[i] = typeCrossbow

wepRPow[i] = iDmg
wepRType[i] = iType
wepRPowRng[i] = .3
wepRStrMult[i] = iStrMult
wepRStamina[i] = .1
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = iRng
wepReload[i] = 5.0
wepReloadStamina[i] = 2.0

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

#define lightCrossbow
iSpr = spr_lightCrossbow
iDmg = 6.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 4
iSpd = 1
iSize = 2
iShots = 1
iReloads = 20
iRng = 12
iName = 'Light Crossbow'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_lgtCrossbow
name = iName
ttType = itemTypeRanged
addItemTooltip('Skill - Stagger','Stagger#On Hit: 10% chance to DAZE for 5 seconds. DAZED characters have a 50% miss chance',5,c_yellow)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = basicRangedProficiency  
break

case 1:     //Called when owned
wepName[i] = iName
maxShots[i] = iShots
maxReloads[i] = iReloads
break

case 2:     //Called when equipped
wepClass[i] = ranged
wepAnimType[i] = typeCrossbow

wepRPow[i] = iDmg
wepRType[i] = iType
wepRPowRng[i] = .3
wepRStrMult[i] = iStrMult
wepRStamina[i] = .1
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = iRng
wepReload[i] = 3.0
wepReloadStamina[i] = 1.0

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = iSpr

//Skill
onHit[onHitSize,0] = wepsklStagger
onHit[onHitSize,1] = 'Stagger'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 10
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}
