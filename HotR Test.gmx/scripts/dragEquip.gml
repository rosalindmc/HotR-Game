#define dragEquip
//Check equipment proficencies to see if you can equip the item.
//dragEquip(slot,character) 
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
            slot.occupant.lockx = lockSlot.x-view_xview[]
            slot.occupant.locky = lockSlot.y-view_yview[]
            slot.occupant.x = lockSlot.x-view_xview[]
            slot.occupant.y = lockSlot.y-view_yview[]
            lockSlot.occupant = slot.occupant
            success = 2
            
            if lockSlot.equipSlot != 0
            {
                slot.occupant.inInventory = false
                
                global.charSelect.invSlot[slot.occupant.equipped,0] = emptySlot
                slot.occupant.equipped = lockSlot.equipSlot
                
                global.charSelect.invSlot[slot.occupant.equipped,0] = itemType
                global.charSelect.invSlot[slot.occupant.equipped,1] = itemQuality
                global.charSelect.invSlot[slot.occupant.equipped,2] = itemTrait[1]
                global.charSelect.invSlot[slot.occupant.equipped,3] = itemTrait[2]
                global.charSelect.invSlot[slot.occupant.equipped,4] = itemTrait[3]                
            }
            else
            {
                slot.occupant.inInventory = true
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
        
        lockx = slot.x-view_xview[]
        locky = slot.y-view_yview[]
        
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
        }
        else
        {
            inInventory = true
        }
        
        resetModels()
    }
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
#define dragRelease
slot = instance_nearest(mouse_x,mouse_y,obj_inventorySlot)

if distance_to_object(slot) < 25
{
    dragEquip(slot,global.charTab)
    /*
    if slot.equipSlot = false
    {
        if slot.occupant = emptySlot
        {    
            lockSlot.occupant = emptySlot
            lockx = slot.x-view_xview[]
            locky = slot.y-view_yview[]
            slot.occupant = id
            inInventory = true
            global.charSelect.invSlot[equipped,0] = emptySlot
            equipped = 0
            
            weaponSlotFill()
            
            if global.charSelect.invSlot[3,0] = emptySlot
            {
                global.charSelect.range = false
            }
            
            resetModels()
        }
        else
        {
            x = lockx
            y = locky
        }
    }
    */
}

defaultBorders()

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

//First Check if the slot can take the given item
with(argument1)
{
switch(argument0.equipSlot)
{
case 0: success = true break

case 1: 
if ttType = itemTypeWeapon and (global.equipSlot[2].occupant = emptySlot or greatWeapon = false)
{success = true} 
break

case 2: 
if (ttType = itemTypeWeapon or shield = true)and greatWeapon = false
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

case 3: if ttType = itemTypeRanged {success = true} break

case 4: if ttType = itemTypeArmour {success = true} break

case 5: case 6: case 7: if ttType = itemTypeTrinket {success = true} break

case 8: if ttType = itemTypePlating or ttType = itemTypeTrinket {success = true} break
}
}

return success
