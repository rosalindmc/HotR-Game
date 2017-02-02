#define shields

#define heaterShield
iSpr = spr_heaterShield
iDmg = 3.0
iDmgRng = .3
iType = 'Impact'
iStrMult = .3
iPen = 1
iSpd = 1
iBlockGen = .3
iBlockStr = 8

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_heaterShield
name = 'Heater Shield'
ttType = itemTypeShield
tooltip = "A metal shield."
blockGen = iBlockGen
blockStr = iBlockStr

itemProf[0] = shieldProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepType[i] = melee
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
blockStr += iBlockStr
blockGen += iBlockGen

//Weapon Sprites
weaponSprite[i] = iSpr
break
}

#define roundShield
iSpr = spr_roundShield
iDmg = 2.0
iDmgRng = .3
iType = 'Impact'
iStrMult = .25
iPen = 1
iSpd = 1.1
iBlockGen = .35
iBlockStr = 4

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_roundShield
name = 'Round Shield'
ttType = itemTypeShield
tooltip = "A round dueling shield."
blockGen = iBlockGen
blockStr = iBlockStr

itemProf[0] = shieldProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepType[i] = melee
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
blockStr += iBlockStr
blockGen += iBlockGen

//Weapon Sprites
weaponSprite[i] = iSpr
break
}

#define squareShield
iSpr = spr_squareShield
iDmg = 4.0
iDmgRng = .3
iType = 'Impact'
iStrMult = .35
iPen = 1
iSpd = 0.5
iBlockGen = .25
iBlockStr = 12

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_squareShield
name = 'Square Shield'
ttType = itemTypeShield
tooltip = "A large shield."
blockGen = iBlockGen
blockStr = iBlockStr

itemProf[0] = shieldProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepType[i] = melee
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
blockStr += iBlockStr
blockGen += iBlockGen

//Weapon Sprites
weaponSprite[i] = iSpr
break
}
