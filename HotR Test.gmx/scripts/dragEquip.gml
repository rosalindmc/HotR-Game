#define dragEquip
//Check equipment proficencies to see if you can equip the item.
//dragEquip(slot,character) 
//Script is run by the dragged item

success = false

//First Check if the slot can take the given item
switch(slot.equipSlot)
{
case 0: success = true break

case 1: 
if ttType = itemTypeWeapon and (global.equipSlot[2].occupant = emptySlot or itemProf[0] != heavyWeaponProficiency)
{success = true} 
break

case 2: 
if (ttType = itemTypeWeapon or ttType = itemTypeShield) and itemProf[0] != heavyWeaponProficiency
{
    if global.equipSlot[1].occupant != emptySlot
    {
        if global.equipSlot[1].occupant.itemProf[0] != heavyWeaponProficiency
        {success = true}
    }
    else 
    {success = true slot = global.equipSlot[1]}
}
break

case 3: if ttType = itemTypeRanged {success = true} break

case 4: if ttType = itemTypeArmour {success = true} break

case 5: case 6: case 7: case 8: if ttType = itemTypeTrinket {success = true} break
}

//Success
if success = true
{
    lockSlot.occupant = emptySlot
    lockx = slot.x-view_xview[]
    locky = slot.y-view_yview[]
    
    if slot.occupant != emptySlot
    {
        with(slot.occupant)
        {
            slot = other.lockSlot
            lockSlot = slot
            dragEquip(other.lockSlot,global.charTab)
        }
    }
    
    slot.occupant = id
    inInventory = false
    global.charSelect.invSlot[equipped,0] = emptySlot
    equipped = slot.equipSlot
    global.charSelect.invSlot[equipped,0] = itemType
    global.charSelect.invSlot[equipped,1] = itemQuality
    global.charSelect.invSlot[equipped,2] = itemTrait[1]
    global.charSelect.invSlot[equipped,3] = itemTrait[2]
    global.charSelect.invSlot[equipped,4] = itemTrait[3]
    
    resetModels()
}

#define resetModels
with(obj_model)
{
    if owner = global.charSelect
    {
        importCharacter(owner)
    }
}
#define weaponSlotFill
//When you remove slot 1 while slot 2 is filled, slot 2 should move to slot 1.  

if lockSlot.equipSlot = 1
{
    if instance_exists(global.equipSlot[2].occupant)
    {
        if global.equipSlot[2].occupant.ttType = itemTypeWeapon
        {
            with(global.equipSlot[2].occupant)
            {
                slot = global.equipSlot[1]
                lockSlot = slot
                dragEquip(global.equipSlot[1],global.charTab)
                global.equipSlot[2].occupant = emptySlot
            }
        }
    }
}