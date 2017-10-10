#define dragEquip
//Check equipment proficencies to see if you can equip the item.
//dragEquip() 
//Script is run by the dragged item

//Success
success = true

if slotViable(slot,id)
{   
    if slot.occupant != emptySlot
    {
        if slotViable(lockSlot,slot.occupant)
        {
            slot.occupant.slot = lockSlot
            slot.occupant.lockx = lockSlot.x-view_xview
            slot.occupant.locky = lockSlot.y-view_yview
            slot.occupant.x = lockSlot.x-view_xview
            slot.occupant.y = lockSlot.y-view_yview
            lockSlot.occupant = slot.occupant
            success = 2
            
            if lockSlot.equipSlot != 0
            {
                slot.occupant.inInventory = false
                
                global.charSelect.invSlot[slot.occupant.equipped,0] = emptySlot
                slot.occupant.equipped = lockSlot.equipSlot
                lockSlot.occupant = slot.occupant
                
                global.charSelect.invSlot[slot.occupant.equipped,0] = slot.occupant.itemType
                global.charSelect.invSlot[slot.occupant.equipped,1] = slot.occupant.itemQuality
                global.charSelect.invSlot[slot.occupant.equipped,2] = slot.occupant.itemTrait[1]
                global.charSelect.invSlot[slot.occupant.equipped,3] = slot.occupant.itemTrait[2]
                global.charSelect.invSlot[slot.occupant.equipped,4] = slot.occupant.itemTrait[3]                
            }
            else
            {
                slot.occupant.inInventory = true
                slot.occupant.equipped = 0
                slot.occupant.hudY = lockSlot.hudY
            }
        }
        else
        {
            success = 0
        }
    }
    
    
    if success != 0
    {
        if success = 1
        {
            lockSlot.occupant = emptySlot
            global.charSelect.invSlot[equipped,0] = emptySlot
        }
        
        lockx = slot.x-view_xview
        locky = slot.y-view_yview
        
        slot.occupant = id

        equipped = slot.equipSlot
        
        if equipped != 0
        {
            inInventory = false
            global.charSelect.invSlot[equipped,0] = itemType
            global.charSelect.invSlot[equipped,1] = itemQuality
            global.charSelect.invSlot[equipped,2] = itemTrait[1]
            global.charSelect.invSlot[equipped,3] = itemTrait[2]
            global.charSelect.invSlot[equipped,4] = itemTrait[3]
            global.charSelect.invSlot[equipped,5] = itemMat[1]
            global.charSelect.invSlot[equipped,6] = itemMat[2]
        }
        else
        {
            inInventory = true
        }
        
    }
}

resetModels()


#define resetModels
with(obj_model)
{
    if owner = global.charSelect
    {
        importCharacter(owner)
        equipOwner(owner)
    }
}

#define weaponSlotFill
//When you remove slot 1 while slot 2 is filled, slot 2 should move to slot 1.  
if global.equipSlot[1].occupant = emptySlot
{
    if instance_exists(global.equipSlot[2].occupant)
    {
        if global.equipSlot[2].occupant.ttType = itemTypeWeapon
        {
            with(global.equipSlot[2].occupant)
            {
                slot = global.equipSlot[1]
                lockSlot = slot
                dragEquip()
                global.equipSlot[2].occupant = emptySlot
            }
        }
    }
}

#define dragRelease
slot = instance_nearest(mouse_x,mouse_y,obj_inventorySlot)

if point_distance(slot.x,slot.y,mouse_x,mouse_y) < 35
{
    dragEquip()
    weaponSlotFill()
}

defaultBorders()
sortInventory()

#define defaultBorders

with(obj_inventorySlot)
{
    if equipSlot != 0
    {
        border = 0
    }
}

#define slotViable
var success = false
var slot = argument0
var i = global.charSelect

//First Check if the slot can take the given item
with(argument1)
{
switch(argument0.equipSlot)
{
case 0: success = true break

case 1: 
if (ttType = itemTypeWeapon and canEquip = true) and (global.equipSlot[2].occupant = emptySlot or greatWeapon = false)
{success = true} 
break

case 2: 
if (ttType = itemTypeWeapon or ttType = itemTypePistol or ttType = itemTypeShield) and canEquip = true and greatWeapon = false
{
    if global.equipSlot[1].occupant != emptySlot
    {
        if global.equipSlot[1].occupant.greatWeapon = false
        {success = true}
    }
    else 
    {success = true slot = global.equipSlot[1]}
}
break

case 3: if (ttType = itemTypeRanged or ttType = itemTypePistol) and canEquip = true {success = true} break

case 4: if ttType = itemTypeArmour and canEquip = true {success = true} break

case 5: case 6: case 7: if ttType = itemTypeTrinket {success = true} break

case 8: if (ttType = itemTypePlating and canEquip = true) or ttType = itemTypeTrinket {success = true} break
}
}

return success

#define canEquipCheck
var i = global.charSelect

//Size Check
wrongSize = false

if ttType = itemTypeWeapon or ttType = itemTypePistol
{
     if i.wepSize-2 > iSize or i.wepSize+1 < iSize
     {
        wrongSize = true
     }
}
else if ttType = itemTypeArmour or ttType = itemTypePlating
{
    if i.armSize != iSize    
    {
        wrongSize = true
    }
}
else if ttType = itemTypeShield or ttType = itemTypePistol or ttType = itemTypeRanged
{
    if i.wepSize-1 > iSize or i.wepSize < iSize
    {
        wrongSize = true
    }
}

//Proficiency
wrongProf = array_length_1d(itemProf)

for(ii = 0; ii < array_length_1d(itemProf); ii++)
{
    for(iii = 0; iii < array_length_1d(i.itemProf); iii++)
    {
         if itemProf[ii] = i.itemProf[iii]
         {
            wrongProf -= 1
         }
    }
}

if wrongProf != 0 or wrongSize = true
{
    canEquip = false
}
else
{
    canEquip = true
}