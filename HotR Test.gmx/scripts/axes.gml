#define axes


#define battleAxe
iSpr = spr_battleAxe
iDmg = 3.00
iDmgRng = .3
iType = 'Rending'
iStrMult = .25
iPen = 1.25
iSpd = 1.50

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_battleAxe
name = 'Battle Axe'
ttType = itemTypeWeapon
tooltip = "A one handed axe."
dmg = iDmg
dmgType = iType
rat = iSpd
pen = iPen

itemProf[0] = mediumWeaponProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepType[i] = melee
wepAnimType[i] = typeAxe

wepPow[i] = iDmg
wepType[i] = iType
wepPowRng[i] = iDmgRng
wepStrMult[i] = iStrMult
wepPen[i] = iPen
wepSpeed[i] = iSpd
wepRange[i] = 1

//Weapon Sprites
weaponSprite[i] = iSpr
break
}