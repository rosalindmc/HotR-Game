#define itemScript
//Example Item Script
//itemScript(howtouse)

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_lgtMace
ttType = itemTypeWeapon
name = 'An Item'
tooltip = "A test item used as an example."
dmg = 3.00
rat = 2.00
pen = 0.25

//Proficiency
//Type (1 light, 2 medium, 3 large, 4 basic range, 5 pistols, 6 heavy ranged, 7 throwing, 8 helmet, 9 shield)
itemProf[0] = false     
//Specialization (use the specialization script name)
itemClass[0] = false
//Race (use the race script name)
itemRace[0] = false     
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
break
}

#define emptySlot
//An Empty Inventory Slot
//emptySlot(howtouse)

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
instance_destroy()
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
break
}
#define trinket
switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = choose(ico_ring1,ico_ring2,ico_ring3,ico_belt)
ttType = itemTypeTrinket
tooltip = "A trinket."
dmg = 3.00
rat = 2.00
pen = 0.25
 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
break
}

#define otherWep
switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = choose(ico_mace,ico_knife,ico_shtSword,ico_sabre)
name = 'Weapon'
ttType = itemTypeWeapon
tooltip = "A weapon."
dmg = 3.00
rat = 2.00
pen = 0.25

itemProf[0] = lightWeaponProficiency  
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
break
}
#define armourApplyVis
bodyItems += 1
bodyItem[bodyItems] = iSpr[cutVariant]
bodyColour[bodyItems] = argument0

chstItems += 1
chstItem[chstItems] = iSpr[max(cleaveVariant,cutVariant)]
chstColour[chstItems] = argument0

hipsItems += 1
hipsItem[hipsItems] = iSpr[bodyVariant]
hipsColour[hipsItems] = argument0

if iSkrt[skirtVariant] != spr_none
{
skrtItems += 1
skrtItem[skrtItems] = iSkrt[skirtVariant]
skrtColour[skrtItems] = argument0
}

if sleeveVariant != 1
{
armsItems[1] += 1
armsItem[armsItems[1],1] = iSpr[sleeveVariant]
armsColour[armsItems[1],1] = argument0

armsItems[2] += 1
armsItem[armsItems[2],2] = iSpr[sleeveVariant]
armsColour[armsItems[2],2] = argument0
}

legsItems[1] += 1
legsItem[legsItems[1],1] = iSpr[legsVariant]
legsColour[legsItems[1],1] = argument0

legsItems[2] += 1
legsItem[legsItems[2],2] = iSpr[legsVariant]
legsColour[legsItems[2],2] = argument0