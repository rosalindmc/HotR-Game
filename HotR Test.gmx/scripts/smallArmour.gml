#define smallArmour


#define wretchRags
iSpr[1] = spr_none
iSpr[2] = spr_wretchArmour
iSpr[3] = spr_none
iSpr[4] = spr_none
iSkrt[1] = spr_wretchClothLoin
iSkrt[2] = spr_wretchClothLoin
iSkrt[3] = spr_wretchClothLoin
iDodge = 20
iArm = 0
iProt = 0
iEnc = 0
iSResist = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_cloth
ttType = itemTypeArmour
name = 'Rags'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
sResist = iSResist
itemProf[0] = clothingProficiency
iSize = 1
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when Equipped
dodge += iDodge
armMax += iArm
prot += iProt
enc += iEnc
sResist += iSResist

armourApplyVis(c_white)
break
}

#define wretchArmour
iSpr[1] = spr_wretchArmour
iSpr[2] = spr_wretchArmour
iSpr[3] = spr_wretchArmour
iSpr[4] = spr_wretchArmour
iSkrt[1] = spr_wretchChainLoin
iSkrt[2] = spr_wretchChainLoin
iSkrt[3] = spr_wretchChainLoin
iDodge = 10
iArm = 4
iProt = 0
iEnc = 0
iSResist = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_chainShirt
ttType = itemTypeArmour
name = 'Salvaged Armour'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
sResist = iSResist
itemProf[0] = lightArmourProficiency
iSize = 1 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when Equipped
dodge += iDodge
armMax += iArm
prot += iProt
enc += iEnc
sResist += iSResist

armourApplyVis(c_white)

if headSprite != spr_wretchTwoHead
{
    //Helmet
    headItems += 1
    headItem[headItems] = iSpr[bodyVariant]
    headColour[headItems] = c_white
    hairVisible = false
}

break
}