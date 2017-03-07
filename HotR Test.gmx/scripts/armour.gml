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
iArm = 3
iProt = 0
iEnc = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_robe
ttType = itemTypeArmour
name = 'Robe'
tooltip = 'A comfortable robe'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when Equipped
dodge = iDodge
armMax += iArm
prot += iProt
enc += iEnc

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
iSpr[1] = spr_royalDress
iSpr[2] = spr_royalDress
iSpr[3] = spr_royalDress
iSpr[4] = spr_royalDress
iSkrt[1] = spr_royalSkirt
iSkrt[2] = spr_royalSkirt
iSkrt[3] = spr_royalSkirt
iDodge = 25
iArm = 1
iProt = 0
iEnc = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_cloth
ttType = itemTypeArmour
name = 'Dress'
tooltip = 'A stylish dress'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge = iDodge
armMax += iArm
prot += iProt
enc += iEnc

armourApplyVis(c_white)

underHipsNum -= 1
break
}

#define chainShirt
iSpr[1] = spr_chainMail
iSpr[2] = spr_chainMail
iSpr[3] = spr_chainMail
iSpr[4] = spr_chainMail
iSkrt[1] = spr_none
iSkrt[2] = spr_none
iSkrt[3] = spr_none
iDodge = 10
iArm = 8
iProt = 0
iEnc = 20

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_chainShirt
ttType = itemTypeArmour
name = 'Chain Shirt'
tooltip = 'A light chain vest'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge = iDodge
armMax += iArm
prot += iProt
enc += iEnc

armourApplyVis(c_white)

skrtItems += 1
skrtItem[skrtItems] = spr_robeSkirt1
skrtColour[skrtItems] = favColour
break
}

#define chainMail
iSpr[1] = spr_chainMail
iSpr[2] = spr_chainMail
iSpr[3] = spr_chainMail
iSpr[4] = spr_chainMail
iSkrt[1] = spr_chainTabard
iSkrt[2] = spr_chainTabard
iSkrt[3] = spr_chainTabard
iDodge = 0
iArm = 16
iProt = 0
iEnc = 50

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_chainMail
ttType = itemTypeArmour
name = 'Chain Mail'
tooltip = 'A hefty suit of chain mail armour'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge = iDodge
armMax += iArm
prot += iProt
enc += iEnc

armourApplyVis(c_white)
break
}

#define breastPlate
iSpr[1] = spr_chainMail
iSpr[2] = spr_chainMail
iSpr[3] = spr_chainMail
iSpr[4] = spr_chainMail
iSkrt[1] = spr_chainTabard
iSkrt[2] = spr_chainTabard
iSkrt[3] = spr_chainTabard
iDodge = 0
iArm = 20
iProt = 0
iEnc = 70

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_breastPlate
ttType = itemTypeArmour
name = 'Breastplate'
tooltip = 'A rigid breastplate'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge = iDodge
armMax += iArm
prot += iProt
enc += iEnc

rigid = true

armourApplyVis(c_white)
iSpr[1] = spr_plateMail
iSpr[2] = spr_plateMail
iSpr[3] = spr_plateMail
iSpr[4] = spr_plateMail
iSkrt[1] = spr_none
iSkrt[2] = spr_none
iSkrt[3] = spr_none
armourApplyVis(c_white)
break
}