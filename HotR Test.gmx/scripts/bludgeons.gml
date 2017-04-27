#define bludgeons
//Script Group of Bludgeons

#define lightMace
iSpr = spr_lightMace
iDmg = 4.4
iDmgRng = .2
iType = typeImpact
iStrMult = 1.2
iPen = 1
iSpd = 1.40
iSize = 1
iName = 'Light Mace'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_lgtMace
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Stagger','Stagger#On Hit: 10% chance to DAZE for 5 seconds. DAZED characters have a 50% miss chance',5,c_yellow)
addItemTooltip('Hefty','Hefty#This weapon is 20% more effected by Might and uses 20% more stamina to attack',4,green)
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
onHit[onHitSize,0] = wepsklStagger
onHit[onHitSize,1] = 'Stagger'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 5
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define mace
iSpr = spr_mace
iDmg = 5.6
iDmgRng = .2
iType = typeImpact
iStrMult = 1.2
iPen = 1
iSpd = 1.15
iSize = 2
iName = 'Mace'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_mace
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Skull Crack','Skull Crack#On Hit: 10% chance to STUN for 1 second. STUNNED characters have there action delayed for the duration, cannot dodge and removes zone of control',6,c_yellow)
addItemTooltip('Hefty','Hefty#This weapon is 20% more effected by Might and uses 20% more stamina to attack',4,green)
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
onHit[onHitSize,0] = wepsklSkullcrack
onHit[onHitSize,1] = 'Skull Crack'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 1
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define maul
iSpr = spr_maul
iDmg = 6.8
iDmgRng = .2
iType = typeImpact
iStrMult = 1.2
iPen = 2
iSpd = 0.85
iSize = 3
iName = 'Maul'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_maul
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Skull Crack','Skull Crack#On Hit: 10% chance to STUN for 2 seconds. STUNNED characters have there action delayed for the duration, cannot dodge and removes zone of control',6,c_yellow)
addItemTooltip('Hefty','Hefty#This weapon is 20% more effected by Might and uses 20% more stamina to attack',4,green)
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
reach = 2
greatWeaponSize = 3
threat = true

//Skill
onHit[onHitSize,0] = wepsklSkullcrack
onHit[onHitSize,1] = 'Skull Crack'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 2
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}

#define hammer
iSpr = spr_hammer
iDmg = 4.6
iDmgRng = .2
iType = typePierce
iStrMult = 1.2
iPen = 10
iSpd = 1.20
iSize = 2
iName = 'Hammer'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_hammer
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Shatter','Shatter#On Hit: 10% chance to SUNDER 1.',3,c_yellow)
addItemTooltip('High Impact','High Impact#This weapon inflicts Impact damage if it is more advantageous',4,green)
addItemTooltip('Hefty','Hefty#This weapon is 20% more effected by Might and uses 20% more stamina to attack',4,green)
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
onHit[onHitSize,0] = wepsklShatter
onHit[onHitSize,1] = 'Shatter'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 4
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

#define warhammer
iSpr = spr_warhammer
iDmg = 5.6
iDmgRng = .2
iType = typePierce
iStrMult = 1.2
iPen = 14
iSpd = 0.80
iSize = 3
iName = 'Warhammer'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_warhammer
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Shatter','Shatter#On Hit: 10% chance to SUNDER 2',3,c_yellow)
addItemTooltip('High Impact','High Impact#This weapon inflicts Impact damage if it is more advantageous',4,green)
addItemTooltip('Hefty','Hefty#This weapon is 20% more effected by Might and uses 20% more stamina to attack',4,green)
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
onHit[onHitSize,0] = wepsklShatter
onHit[onHitSize,1] = 'Shatter'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = 8
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

#define staff
iSpr = spr_staff
iDmg = 4.0
iDmgRng = .2
iType = typeImpact
iStrMult = 1
iPen = 1
iSpd = 1.4
iSize = 1
iName = 'Staff'

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_staff
name = iName
ttType = itemTypeWeapon
addItemTooltip('Skill - Guard','Guard#On Hit: 10% chance to gain a Block Charge',3,c_yellow)
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

autoProf(polearmProficiency)
greatWeapon = true
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

greatWeapon = true
greatWeaponSize = 3
threat = true
reach = 2.5

//Skill
onHit[onHitSize,0] = wepsklGuard
onHit[onHitSize,1] = 'Guard'
onHit[onHitSize,2] = 10
onHit[onHitSize,3] = false
onHit[onHitSize,4] = i
onHit[onHitSize,5] = false
onHitSize += 1
break
}