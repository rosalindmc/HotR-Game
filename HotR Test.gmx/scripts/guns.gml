#define guns


#define carbine
iSpr = spr_carbine
iDmg = 8.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 12
iSpd = 1
iSize = 2
iShots = 1
iReloads = 20
iRng = 22
iName = 'Carbine'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_carbine
name = iName
ttType = itemTypeRanged
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 10 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = firearmProficiency  
break

case 1:     //Called when owned
wepName[i] = iName
maxShots[i] = iShots
maxReloads[i] = iReloads
break

case 2:     //Called when equipped
wepClass[i] = ranged
wepAnimType[i] = typeCrossbow

wepPow[i] = 3.2
wepType[i] = typePierce
wepPowRng[i] = .3
wepStrMult[i] = .8
wepStamina[i] = .8
wepPen[i] = 2
wepSpeed[i] = 1.30
wepRange[i] = 1

wepRPow[i] = iDmg
wepRType[i] = iType
wepRPowRng[i] = .3
wepRStrMult[i] = iStrMult
wepRStamina[i] = .1
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = iRng
wepReload[i] = 1.0
wepReloadStamina[i] = 0.1
wepRProjSprite[i] = spr_bullet
wepRProjSpeed[i] = 40

greatWeaponSize = 3
rangeAttack = true
greatWeapon = true
reach = 2.5
threat = true

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

#define repeaterCarbine
iSpr = spr_repeaterCarbine
iDmg = 5.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 6
iSpd = 1.2
iSize = 1
iShots = 20
iReloads = 3
iRng = 18
iName = 'Auto Carbine'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_repeater
name = iName
ttType = itemTypeRanged
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 10 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Auto Burst 5','Auto Burst 5#Can fire a fully automatic burst of 5 shots',3,c_orange)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = firearmProficiency  
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
wepReloadStamina[i] = 0.1
wepRProjSprite[i] = spr_bullet
wepRProjSpeed[i] = 30

rangeAttack = true
greatWeapon = true
autoFire = 5

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

#define automatic
iSpr = spr_automatic
iDmg = 5.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 6
iSpd = 1.4
iSize = 1
iShots = 7
iReloads = 3
iRng = 10
iName = 'Automatic'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_automatic
name = iName
ttType = itemTypePistol
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 10 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = pistolProficiency  
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
wepReload[i] = 2.0
wepReloadStamina[i] = 0.1
wepRProjSprite[i] = spr_bullet
wepRProjSpeed[i] = 30

rangeAttack = true

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

#define handCannon
iSpr = spr_handCannon
iDmg = 12.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 12
iSpd = 1.4
iSize = 1
iShots = 1
iReloads = 10
iRng = 6
iName = 'Hand Cannon'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_handCannon
name = iName
ttType = itemTypePistol
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 10 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = pistolProficiency  
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
wepReloadStamina[i] = 0.1
wepRProjSprite[i] = spr_bullet
wepRProjSpeed[i] = 30

rangeAttack = true

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

#define revolver
iSpr = spr_revolver
iDmg = 5.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 6
iSpd = 1.4
iSize = 1
iShots = 6
iReloads = 3
iRng = 12
iName = 'Revolver'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_revolver
name = iName
ttType = itemTypePistol
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 10 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = pistolProficiency  
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
wepReloadStamina[i] = 0.1
wepRProjSprite[i] = spr_bullet
wepRProjSpeed[i] = 30

rangeAttack = true

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

#define longRifle
iSpr = spr_longRifle
iDmg = 10.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 6
iSpd = .6
iSize = 2
iShots = 1
iReloads = 15
iRng = 30
iName = 'Long Rifle'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_longRifle
name = iName
ttType = itemTypeRanged
addItemTooltip('Skill - Cripple','Cripple#On Wound: 10 % chance to CRIPPLE for 10 seconds. CRIPPLE reduces Block Strength, Weapon POW and Skill by 3',6,c_yellow)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = firearmProficiency  
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
wepReload[i] = 1.5
wepReloadStamina[i] = 0.1
wepRProjSprite[i] = spr_bullet
wepRProjSpeed[i] = 40

rangeAttack = true
greatWeapon = true

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

#define recoilessRifle
iSpr = spr_recoiless
iDmg = 15.0
iDmgRng = .3
iType = typePierce
iStrMult = 0
iPen = 60
iSpd = .5
iSize = 2
iShots = 1
iReloads = 2
iRng = 26
iName = 'Recoiless Rifle'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_recoiless
name = iName
ttType = itemTypeRanged
//Add Knock Prone Skill
addItemTooltip('Sunder 2','Sunder 2#On Hit: Break 2 armour',3,green)
addItemTooltip('High Impact','High Impact#This weapon inflicts Impact damage if it is more advantageous',4,green)
addItemTooltip('Mechanical','Mechanical#Weapon damage is unaffected by Might',3,green)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen
shots = iShots
reloads = iReloads
rng = iRng

itemProf[0] = heavyRangedProficiency  
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
wepRStamina[i] = .1
wepRPen[i] = iPen
wepRSpeed[i] = iSpd
wepRRange[i] = iRng
wepReload[i] = 3.0
wepReloadStamina[i] = 0.1
wepRProjSprite[i] = spr_rocket
wepRProjSpeed[i] = 30

rangeAttack = true
greatWeapon = true

//Weapon Sprites
weaponSprite[i] = iSpr

//Skill
onHit[onHitSize,0] = wepSunder
onHit[onHitSize,1] = 'Sunder'
onHit[onHitSize,2] = 8
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1

onHit[onHitSize,0] = wepSlashImpact
onHit[onHitSize,1] = 'High Impact'
onHit[onHitSize,2] = i
onHit[onHitSize,3] = false
onHit[onHitSize,4] = false
onHit[onHitSize,5] = false
onHitSize += 1
break
}