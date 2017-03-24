#define largeArmour

#define warriorChainmail
iSpr[1] = spr_warriorChainPants
iSpr[2] = spr_warriorChainPants
iSpr[3] = spr_warriorChainPants
iSpr[4] = spr_warriorChainPants
iSkrt[1] = spr_none
iSkrt[2] = spr_none
iSkrt[3] = spr_none
iDodge = 0
iArm = 16
iProt = 0
iEnc = 40

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_chainMail
ttType = itemTypeArmour
name = 'Chain Mail'
tooltip = 'A suit of chain for a large warrior'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
iSize = 3
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge = iDodge
armMax += iArm
prot += iProt
enc += iEnc

armourApplyNoArms(c_white)

iSpr[1] = spr_warriorChainShirt
iSpr[2] = spr_warriorChainShirt
iSpr[3] = spr_warriorChainShirt
iSpr[4] = spr_warriorChainShirt
iSkrt[1] = spr_warriorChainTabard
iSkrt[2] = spr_warriorChainTabard
iSkrt[3] = spr_warriorChainTabard

underHipsNum += 1
armourApplyVis(c_white)
break
}

#define blackKnightPlate
iSpr[1] = spr_blackKnightArmour
iSpr[2] = spr_blackKnightArmour2
iSpr[3] = spr_blackKnightArmour
iSpr[4] = spr_blackKnightArmour
iSkrt[1] = spr_none
iSkrt[2] = spr_none
iSkrt[3] = spr_none
iDodge = -10
iArm = 12
iProt = 0
iEnc = 50

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_platemail3
ttType = itemTypePlating
name = 'Black Plate'
tooltip = 'The platemail of a black knight'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
iSize = 3
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge = iDodge
armMax += iArm
prot += iProt
enc += iEnc

rigid = true

//Skill
areHit[areHitSize,0] = glancing
areHit[areHitSize,1] = 'Glancing'
areHit[areHitSize,2] = 15
areHit[areHitSize,3] = false
areHit[areHitSize,4] = false
areHit[areHitSize,5] = false
areHitSize += 1

girdleItems += 1
girdleItem[girdleItems] = spr_warriorBlackPlateBelt
girdleColour[girdleItems] = c_white

//Helmet
headItems += 1
headItem[headItems] = iSpr[bodyVariant]
headColour[headItems] = c_white
hairVisible = false

armourApplyNoArms(c_white)
break
}