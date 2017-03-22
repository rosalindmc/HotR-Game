#define characterInitialize
//Establish ALL variables
//Allegiance
party = -4
mook = false

//Identity
firstName = -4
lastName = -4
nickName = -4
title = -4

race = -4
class = -4

//Attributes
might = -4
grace = -4
cunning = -4
will = -4
fellowship = -4

//Experience
level = 1
levelPending = 0
experience = 0
expToLevel = 5

//Vital Stats
life = 0
stamina = 0

//Leveling
lastAttribute = 10
attributePoint = .5
combatTalentPoint = 0
travelTalentPoint = 0
lifePoint = 0
staminaPoint = 0
classLife = .3
classStamina = .3
classMSkill = .3
classRSkill = .3
classCSkill = .3

//Talents
for(var i = 0; i < 8; i++)
{
    talent[i,0] = emptyTalent
    talent[i,1] = emptyBranch
    talent[i,2] = emptyBranch
    talent[i,3] = emptyBranch
    talent[i,4] = emptyBranch
    talent[i,5] = 0
}

//Role
range = false

//Appearance
gender = -4
skinTone = -4
eyeColour = -4
headSprite = -4
hairStyle = -4
hairColour = -4

//Equipped Items
i = 1
repeat(8)
{
    invSlot[i,0] = emptySlot    //i,0 is the item type
    invSlot[i,1] = 0            //i,1 is the item quality
    invSlot[i,2] = emptyMutator //i,2 is the first mutator
    invSlot[i,3] = emptyMutator //i,3 is the second mutator                
    invSlot[i,4] = emptyMutator //i,4 is the third mutator

    i += 1
}

//Temp Equipment Proficiency
itemProf[0] = lightWeaponProficiency
itemProf[1] = mediumWeaponProficiency
itemProf[2] = heavyWeaponProficiency

#define fashionInitialize
favColour = choose(clothBlue,clothRed,clothGreen)
eyeTrinket = choose(-4,-4,-4,spr_fashion1,spr_fashion2)      //Glasses, Monocle, Eyepatch
backTrinket = -4    //Capes, Cloaks, Furs
neckTrinket = choose(-4,-4,spr_fashion1,spr_fashion2)     //Necklaces, Scarves, Shawls
hipTrinket = choose(-4,spr_corset,spr_belt2,spr_belt)     //Belts, Sashes
headTrinket = choose(-4,-4,-4,-4,-4,-4,spr_crown)    //Crown, Headscarf, Bandana, Hat, Hairband, Hair Flower, Bonnet, Hair Bow, Turban
headScarfTrinket = -4  //Crown, Headscarf, Bandana, Hat, Hairband, Hair Flower, Bonnet, Hair Bow, Turban

overBodyItem = choose(-4,-4,spr_vest,spr_coat)   //Vests, Coats, Tabards
underBodyItem = choose(-4,-4,-4,-4,-4,-4,spr_underClothes)  //Bra, Undershirt, Bindings
underLegsItem = choose(-4,-4,-4,spr_fashion1,spr_fashion2) 
likesGloves = -4    //wears gloves?

bodyVariant = choose(1,2,3)     //Default, Exposed Midriff

legsVariant = choose(1,2)     //Pants, Tights, High Boots, Leg Straps, None
sleeveVariant = choose(1,2,3)   //No sleeves, Short sleeves, Long Sleeves
skirtVariant = choose(1,2,3)    //Short Skirt, Long Skirt, Loin Cloth

cutVariant = choose(1,2,3,4)      //Default Cut, Choke cut, Wide cut, Tank cut
cleaveVariant = choose(1,2)   //Default Cut, Deep cut

if gender = masc
{
    bodyVariant = 1
    cutVariant = choose(1,2)
}

#define createCharacterSheet
//createCharacterSheet(party,ruleset)

i = instance_create(x,y,obj_characterSheet)
i.party = argument0
i.ruleSet = argument1
ds_list_add(party,i)

with(i)
{
    //Character Creation
    createCharacter()
}

instance_deactivate_object(i)