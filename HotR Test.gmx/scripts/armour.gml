#define armour
switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = choose(ico_robe,ico_platemail1,ico_chainShirt)
ttType = itemTypeArmour
name = 'Armour'
tooltip = 'Armour.'
dmg = 3.00
rat = 2.00
pen = 0.25
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
break
}

#define robe
iSpr[1] = spr_robe1
iSpr[2] = spr_robe2
iSpr[3] = spr_robe3
iSpr[4] = spr_robe4
iSkrt[1] = spr_robeSkirt1
iSkrt[2] = spr_robeSkirt1
iSkrt[3] = spr_robeSkirt1
iDodge = 20
iArm = 2
iProt = 0
iEnc = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_robe
ttType = itemTypeArmour
name = 'Robe'
tooltip = 'Armour.'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when Equipped
dodge = iDodge
armMax = iArm
arm = iArm
prot = iProt
enc = iEnc

bodyItems += 1
bodyItem[bodyItems] = iSpr[cutVariant]
bodyColour[bodyItems] = favColour

chstItems += 1
chstItem[chstItems] = iSpr[max(cleaveVariant,cutVariant)]
chstColour[chstItems] = favColour

hipsItems += 1
hipsItem[hipsItems] = iSpr[bodyVariant]
hipsColour[hipsItems] = favColour

skrtItems += 1
skrtItem[skrtItems] = iSkrt[skirtVariant]
skrtColour[skrtItems] = favColour

if sleeveVariant != 1
{
armsItems[1] += 1
armsItem[armsItems[1],1] = iSpr[sleeveVariant]
armsColour[armsItems[1],1] = favColour

armsItems[2] += 1
armsItem[armsItems[2],2] = iSpr[sleeveVariant]
armsColour[armsItems[2],2] = favColour
}

legsItems[1] += 1
legsItem[legsItems[1],1] = spr_witchDress
legsColour[legsItems[1],1] = c_white

legsItems[2] += 1
legsItem[legsItems[2],2] = spr_witchDress
legsColour[legsItems[2],2] = c_white

legsItems[1] += 1
legsItem[legsItems[1],1] = spr_robe1
legsColour[legsItems[1],1] = favColour

legsItems[2] += 1
legsItem[legsItems[2],2] = spr_robe1
legsColour[legsItems[2],2] = favColour

underHipsNum -= 1
break
}

#define dress
iSpr[1] = spr_robe1
iSpr[2] = spr_robe2
iSpr[3] = spr_robe3
iSpr[4] = spr_robe4
iSkrt[1] = spr_robeSkirt1
iSkrt[2] = spr_robeSkirt1
iSkrt[3] = spr_robeSkirt1
iDodge = 20
iArm = 1
iProt = 0
iEnc = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_robe
ttType = itemTypeArmour
name = 'Dress'
tooltip = 'Armour.'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
bodyItems += 1
bodyItem[bodyItems] = spr_royalDress
bodyColour[bodyItems] = c_white

chstItems += 1
chstItem[chstItems] = spr_royalDress
chstColour[chstItems] = c_white

hipsItems += 1
hipsItem[hipsItems] = spr_royalDress
hipsColour[hipsItems] = c_white

skrtItems += 1
skrtItem[skrtItems] = spr_royalSkirt
skrtColour[skrtItems] = c_white

armsItems[1] += 1
armsItem[armsItems[1],1] = spr_royalDress
armsColour[armsItems[1],1] = c_white

armsItems[2] += 1
armsItem[armsItems[2],2] = spr_royalDress
armsColour[armsItems[2],2] = c_white

legsItems[1] += 1
legsItem[legsItems[1],1] = spr_royalDress
legsColour[legsItems[1],1] = c_white

legsItems[2] += 1
legsItem[legsItems[2],2] = spr_royalDress
legsColour[legsItems[2],2] = c_white

underHipsNum -= 1
break
}

#define chainmail
iSpr[1] = spr_robe1
iSpr[2] = spr_robe2
iSpr[3] = spr_robe3
iSpr[4] = spr_robe4
iSkrt[1] = spr_robeSkirt1
iSkrt[2] = spr_robeSkirt1
iSkrt[3] = spr_robeSkirt1
iDodge = 10
iArm = 8
iProt = 0
iEnc = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_chainmail
ttType = itemTypeArmour
name = 'Chainmail'
tooltip = 'Armour.'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge = iDodge
armMax = iArm
arm = iArm
prot = iProt
enc = iEnc

bodyItems += 1
bodyItem[bodyItems] = spr_chainMail
bodyColour[bodyItems] = c_white

chstItems += 1
chstItem[chstItems] = spr_chainMail
chstColour[chstItems] = c_white

hipsItems += 1
hipsItem[hipsItems] = spr_chainMail
hipsColour[hipsItems] = c_white

skrtItems += 1
skrtItem[skrtItems] = spr_chainTabard
skrtColour[skrtItems] = c_white

armsItems[1] += 1
armsItem[armsItems[1],1] = spr_chainMail
armsColour[armsItems[1],1] = c_white

armsItems[2] += 1
armsItem[armsItems[2],2] = spr_chainMail
armsColour[armsItems[2],2] = c_white

legsItems[1] += 1
legsItem[legsItems[1],1] = spr_chainMail
legsColour[legsItems[1],1] = c_white

legsItems[2] += 1
legsItem[legsItems[2],2] = spr_chainMail
legsColour[legsItems[2],2] = c_white
break
}