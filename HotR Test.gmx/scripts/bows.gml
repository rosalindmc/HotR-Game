#define bows
//Script Group of Bows

#define longBow
switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_longBow
name = 'Long Bow'
ttType = itemTypeRanged
tooltip = "A long bow."
dmg = 3.0
rat = 2.00
pen = 1

itemProf[0] = basicRangedProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepType[i] = melee
wepAnimType[i] = typeAxe

wepPow[i] = 8
wepType[i] = 'Piercing'
wepPowRng[i] = .5
wepStrMult[i] = 1
wepPen[i] = 0
wepSpeed[i] = .8
wepRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = spr_longBow
break
}

#define shortbow
switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_shortBow
name = 'Short Bow'
ttType = itemTypeRanged
tooltip = "A short bow for hunting."
dmg = 3.0
rat = 2.00
pen = 1

itemProf[0] = basicRangedProficiency  
break

case 1:     //Called when owned
break

case 2:     //Called when equipped
wepType[i] = melee
wepAnimType[i] = typeAxe

wepPow[i] = 8
wepType[i] = 'Piercing'
wepPowRng[i] = .5
wepStrMult[i] = 1
wepPen[i] = 0
wepSpeed[i] = .8
wepRange[i] = 1

rangeAttack = true

//Weapon Sprites
weaponSprite[i] = spr_shortBow
break
}