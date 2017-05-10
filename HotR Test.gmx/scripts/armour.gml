#define armour
switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = choose(ico_robe,ico_platemail1,ico_chainShirt)
ttType = itemTypeArmour
name = 'Armour'
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
iSResist = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_robe
ttType = itemTypeArmour
name = 'Robe'
addItemTooltip('Comfort','Comfort#Reduce Cooldowns by 20 %',2,green)
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
itemProf[0] = clothingProficiency
sResist = iSResist 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when Equipped
dodge += iDodge
armMax += iArm
prot += iProt
enc += iEnc
sResist += iSResist
spellCD += .2

armourApplyVis(favColour)

legsItems[1] += 1
legsItem[legsItems[1],1] = spr_witchDress
legsColour[legsItems[1],1] = c_white

legsItems[2] += 1
legsItem[legsItems[2],2] = spr_witchDress
legsColour[legsItems[2],2] = c_white

//underHipsNum -= 1
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
iDodge = 20
iArm = 1
iProt = 0
iEnc = 0
iSResist = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_cloth
ttType = itemTypeArmour
name = 'Dress'
addItemTooltip('Outgoing','Outgoing#Increase Ability Durations by 20 %',3,green)
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
itemProf[0] = clothingProficiency
sResist = iSResist 
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge += iDodge
armMax += iArm
prot += iProt
enc += iEnc
sResist += iSResist
spellDur += .2

armourApplyVis(c_white)

underHipsNum += 1
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
iDodge = 15
iArm = 6
iProt = .1
iEnc = 25
iSResist = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_chainShirt
ttType = itemTypeArmour
name = 'Chain Shirt'
addItemTooltip('Soak','Soak#Attacks that fail to penetrate all of your armour have their damage reduced by a further 10 %',5,green)
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
itemProf[0] = lightArmourProficiency
sResist = iSResist
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge += iDodge
armMax += iArm
prot += iProt
enc += iEnc
sResist += iSResist

if skirtVariant = 1
{
    hipsItems += 1
    hipsItem[hipsItems] = spr_leatherPants
    hipsColour[hipsItems] = c_white
    underHipsNum += 1
    
    legsItems[1] += 1
    legsItem[legsItems[1],1] = spr_leatherPants
    legsColour[legsItems[1],1] = c_white
    
    legsItems[2] += 1
    legsItem[legsItems[2],2] = spr_leatherPants
    legsColour[legsItems[2],2] = c_white
}
else
{
    skrtItems += 1
    skrtItem[skrtItems] = spr_robeSkirt1
    skrtColour[skrtItems] = favColour
}

underHipsNum += 1
armourApplyVis(c_white)

break
}

#define chainMail
iSpr[1] = spr_chainMail
iSpr[2] = spr_chainMail
iSpr[3] = spr_chainMail
iSpr[4] = spr_chainMail
iSkrt[1] = spr_none
iSkrt[2] = spr_chainTabard
iSkrt[3] = spr_chainTabard
iDodge = 10
iArm = 12
iProt = .1
iEnc = 40
iSResist = .2

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_chainMail
ttType = itemTypeArmour
name = 'Chain Mail'
addItemTooltip('Soak','Soak#Attacks that fail to penetrate all of your armour have their damage reduced by a further 10 %',5,green)
addItemTooltip('Protection','Protection#Suppression Resistance increased by 20 %',3,green)
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
itemProf[0] = heavyArmourProficiency
sResist = iSResist
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge += iDodge
armMax += iArm
prot += iProt
enc += iEnc
sResist += iSResist

underHipsNum += 1
armourApplyVis(c_white)
break
}

#define breastPlate
iSpr[1] = spr_plateMail
iSpr[2] = spr_plateMail
iSpr[3] = spr_plateMail
iSpr[4] = spr_plateMail
iSkrt[1] = spr_none
iSkrt[2] = spr_none
iSkrt[3] = spr_none
iDodge = -5
iArm = 10
iProt = 0
iEnc = 50
iSResist = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_breastPlate
ttType = itemTypePlating
name = 'Breastplate'
addItemTooltip('Glancing','Glancing#Attacks against you have a 15 % chance to lose all Penetration',3,green)
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
itemProf[0] = lightArmourProficiency
sResist = iSResist
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge += iDodge
armMax += iArm
prot += iProt
enc += iEnc
sResist += iSResist

rigid = true

//Skill
areHit[areHitSize,0] = glancing
areHit[areHitSize,1] = 'Glancing'
areHit[areHitSize,2] = 15
areHit[areHitSize,3] = false
areHit[areHitSize,4] = false
areHit[areHitSize,5] = false
areHitSize += 1

armourApplyVis(c_white)

//underHipsNum -= 1
break
}

#define fedUniform
iSpr[1] = spr_fedUniform
iSpr[2] = spr_fedUniform
iSpr[3] = spr_fedUniform
iSpr[4] = spr_fedUniform
iSkrt[1] = spr_fedSkirt
iSkrt[2] = spr_fedSkirt
iSkrt[3] = spr_fedSkirt
iDodge = 20
iArm = 4
iProt = 0
iEnc = 0
iSResist = 0

switch(argument0)
{
case 0:     //Called when the item creates an icon and tooltip
sprite_index = ico_cloth
ttType = itemTypeArmour
name = 'Uniform'
arm = iArm
dodge = iDodge
prot = iProt
enc = iEnc
itemProf[0] = clothingProficiency
sResist = iSResist
break

case 1:     //Called when the item is equipped by a model.
break

case 2:     //Called when ?
dodge += iDodge
armMax += iArm
prot += iProt
enc += iEnc
sResist += iSResist

underHipsNum += 1
armourApplyVis(c_white)
break
}