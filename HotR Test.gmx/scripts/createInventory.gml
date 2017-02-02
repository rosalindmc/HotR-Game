//Run this script with the party making the inventory icons.
//createInventory()

with(global.activeActor)
{
ix = 0
iy = 0

//Create Slots
i = 1
repeat(4)
{
ii = instance_create(150,103+(i*22),obj_inventorySlot)
ii.equipSlot = i
global.equipSlot[i] = ii
i += 1
}

repeat(4)
{
ii = instance_create(270,15+(i*22),obj_inventorySlot)
ii.equipSlot = i
global.equipSlot[i] = ii
i += 1
}

instance_create(210,158,obj_backDrop)

repeat(10)
{
    repeat(8)
    {
        instance_create(350+(ix*22),80+(iy*22),obj_inventorySlot)
        ix += 1
        
        if ix > 7
        {
            ix = 0
        }
    }
    iy += 1
}

//Add Items from Inventory
i = 0
ix = 350
iy = 80

repeat(inventorySize)
{
    ii = instance_create(ix,iy,obj_item)
    ii.itemType = inventory[i,0]
    ii.itemQuality = inventory[i,1]
    ii.itemTrait[1] = inventory[i,2]
    ii.itemTrait[2] = inventory[i,3]
    ii.itemTrait[3] = inventory[i,4]
    
    with(ii)
    {
        script_execute(itemType,0)
    }
    i += 1
    ix += 22
    if ix >= 350+(8*22)
    {
        ix -= 8*22
        iy += 22
    }
}
}

//Add Items from Equipment
i = 1
repeat(8)
{
    if global.charSelect.invSlot[i,0] != emptySlot
    {
        if i <= 4
        {
            ii = instance_create(150,103+(i*22),obj_item)
        }
        else
        {
            ii = instance_create(270,15+(i*22),obj_item)
        }
        
        ii.itemType = global.charSelect.invSlot[i,0]
        ii.itemQuality = global.charSelect.invSlot[i,1]
        ii.itemTrait[1] = global.charSelect.invSlot[i,2]
        ii.itemTrait[2] = global.charSelect.invSlot[i,3]
        ii.itemTrait[3] = global.charSelect.invSlot[i,4]
        ii.inInventory = false
        ii.equipped = i
        
        
        global.equipSlot[i].occupant = ii
        
        with(ii)
        {
            script_execute(itemType,0)
        }
    }
    i += 1
}
