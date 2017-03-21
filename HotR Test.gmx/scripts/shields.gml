#define shields


#define heaterShield
iSpr = spr_heaterShield
iDmg = 3.0
iDmgRng = .2
iType = typeImpact
iStrMult = 1
iPen = 1
iSpd = 1
iBlockGen = .3
iBlockStr = 8
iEnc = 20

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_heaterShield
name = 'Heater Shield'
ttType = itemTypeShield
tooltip = "A metal shield."
blockGen = iBlockGen
blockStr = iBlockStr
enc = iEnc

shield = true

itemProf[0] = shieldProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepClass[i] = melee
wepAnimType[i] = typeShield

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = iDmgRng
wepStrMult[i] = iStrMult
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Shield Stuff
sResist += .5
enc += iEnc
wepSpeed[1] -= .2
blockStr += iBlockStr
blockGen += iBlockGen

//Weapon Sprites
weaponSprite[i] = iSpr
break
}

#define roundShield
iSpr = spr_roundShield
iDmg = 2.0
iDmgRng = .2
iType = typeImpact
iStrMult = 1
iPen = 1
iSpd = 1.1
iBlockGen = .35
iBlockStr = 4
iEnc = 10

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_roundShield
name = 'Round Shield'
ttType = itemTypeShield
tooltip = "A round dueling shield."
blockGen = iBlockGen
blockStr = iBlockStr
enc = iEnc

shield = true

itemProf[0] = shieldProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepClass[i] = melee
wepAnimType[i] = typeShield

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = iDmgRng
wepStrMult[i] = iStrMult
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

onBlock[onBlockSize,0] = smallShield
onBlock[onBlockSize,1] = 'Small Shield'
onBlock[onBlockSize,2] = false
onBlock[onBlockSize,3] = false
onBlock[onBlockSize,4] = false
onBlock[onBlockSize,5] = false
onBlockSize += 1

//Shield Stuff
sResist += .5
enc += iEnc
wepSpeed[1] -= .1
blockStr += iBlockStr
blockGen += iBlockGen

//Weapon Sprites
weaponSprite[i] = iSpr
break
}

#define squareShield
iSpr = spr_squareShield
iDmg = 4.0
iDmgRng = .2
iType = typeImpact
iStrMult = 1.2
iPen = 1
iSpd = 0.5
iBlockGen = .25
iBlockStr = 12
iEnc = 30

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_squareShield
name = 'Square Shield'
ttType = itemTypeShield
tooltip = "A large shield."
blockGen = iBlockGen
blockStr = iBlockStr
enc = iEnc

shield = true

itemProf[0] = largeShieldProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepClass[i] = melee
wepAnimType[i] = typeShield

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = iDmgRng
wepStrMult[i] = iStrMult
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

onBlock[onBlockSize,0] = largeShield
onBlock[onBlockSize,1] = 'Large Shield'
onBlock[onBlockSize,2] = false
onBlock[onBlockSize,3] = false
onBlock[onBlockSize,4] = false
onBlock[onBlockSize,5] = false
onBlockSize += 1

//Shield Stuff
sResist += .5
enc += iEnc
wepSpeed[1] -= .3
blockStr += iBlockStr
blockGen += iBlockGen

//Weapon Sprites
weaponSprite[i] = iSpr
break
}
