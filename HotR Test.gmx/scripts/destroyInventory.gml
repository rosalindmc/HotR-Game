//Run this script whenever an inventory screen is closed.
//destroyInventory()

with(global.activeActor)
{
inventorySize = 0

with(obj_item)
{
    if inInventory = true
    {
        other.inventory[other.inventorySize,0] = itemType
        other.inventory[other.inventorySize,1] = itemQuality
        other.inventory[other.inventorySize,2] = itemTrait[1]
        other.inventory[other.inventorySize,3] = itemTrait[2]
        other.inventory[other.inventorySize,4] = itemTrait[3]
        other.inventory[other.inventorySize,5] = itemMat[1]
        other.inventory[other.inventorySize,6] = itemMat[2]
        other.inventory[other.inventorySize,7] = itemName
        other.inventorySize += 1
    }
    else
    {
        global.charSelect.invSlot[equipped,0] = itemType
        global.charSelect.invSlot[equipped,1] = itemQuality
        global.charSelect.invSlot[equipped,2] = itemTrait[1]
        global.charSelect.invSlot[equipped,3] = itemTrait[2]
        global.charSelect.invSlot[equipped,4] = itemTrait[3]
        global.charSelect.invSlot[equipped,5] = itemMat[1]
        global.charSelect.invSlot[equipped,6] = itemMat[2]
        global.charSelect.invSlot[equipped,7] = itemName
    }
}
}

with(obj_invHud)
{
    instance_destroy()
}
