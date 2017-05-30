#define createInventory
//Run this script with the party making the inventory icons.
//createInventory()
with(global.activeActor)
{
ix = 0
iy = 0
global.hudY = 0

//Create Equip Slots
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

ii = instance_create(170,169,obj_designateRanged)
ii.image_index = global.charSelect.range+1

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
        ii.itemMat[1] = global.charSelect.invSlot[i,5]
        ii.itemMat[2] = global.charSelect.invSlot[i,6]
        ii.inInventory = false
        ii.equipped = i
         
        global.equipSlot[i].occupant = ii
        
        with(ii)
        {
            script_execute(itemType,0)
            canEquipCheck()
            script_execute(itemTrait[1],0)
            script_execute(itemTrait[2],0)
            script_execute(itemTrait[3],0)
            //Material
            mat1 = script_execute(itemMat[1],1,0,true)
            mat2 = script_execute(itemMat[2],1,0,true)
            
            switch(ttType)
            {
            case itemTypeWeapon:
            if dmgType = typeImpact
            {
                script_execute(itemType,3)
                script_execute(itemMat[1],2,matNum,true)
                script_execute(itemType,4)
                script_execute(itemMat[2],4,matNum,true)
            }
            else
            {
                script_execute(itemType,3)
                script_execute(itemMat[1],3,matNum,true)
                script_execute(itemType,4)
                script_execute(itemMat[2],4,matNum,true)
            }
            break
            case itemTypeShield:
            script_execute(itemType,3)
            script_execute(itemMat[1],5,matNum,true)
            script_execute(itemType,4)
            script_execute(itemMat[2],5,matNum,true)
            break
            case itemTypeRanged:
            case itemTypePistol:
            script_execute(itemType,3)
            script_execute(itemMat[1],8,matNum,true)
            script_execute(itemType,4)
            script_execute(itemMat[2],9,matNum,true)
            break
            case itemTypeArmour:
            case itemTypePlating:
            script_execute(itemType,3)
            script_execute(itemMat[1],6,matNum,true)
            script_execute(itemType,4)
            script_execute(itemMat[2],7,matNum,true)        
            break
            }
        }
    }
    i += 1
}

//Add Items from Inventory
i = inventorySize-1

repeat(inventorySize)
{
    ii = instance_create(0,0,obj_item)
    ii.itemType = inventory[i,0]
    ii.itemQuality = inventory[i,1]
    ii.itemTrait[1] = inventory[i,2]
    ii.itemTrait[2] = inventory[i,3]
    ii.itemTrait[3] = inventory[i,4]
    ii.itemMat[1] = inventory[i,5]
    ii.itemMat[2] = inventory[i,6]
    
    with(ii)
    {
        script_execute(itemType,0)
        canEquipCheck()
        script_execute(itemTrait[1],0)
        script_execute(itemTrait[2],0)
        script_execute(itemTrait[3],0)
        //Material
        mat1 = script_execute(itemMat[1],1,0,true)
        mat2 = script_execute(itemMat[2],1,0,true)
        
        switch(ttType)
        {
        case itemTypeWeapon:
        if dmgType = typeImpact
        {
            script_execute(itemType,3)
            script_execute(itemMat[1],2,matNum,true)
            script_execute(itemType,4)
            script_execute(itemMat[2],4,matNum,true)
        }
        else
        {
            script_execute(itemType,3)
            script_execute(itemMat[1],3,matNum,true)
            script_execute(itemType,4)
            script_execute(itemMat[2],4,matNum,true)
        }
        break
        case itemTypeShield:
        script_execute(itemType,3)
        script_execute(itemMat[1],5,matNum,true)
        script_execute(itemType,4)
        script_execute(itemMat[2],5,matNum,true)
        break
        case itemTypeRanged:
        case itemTypePistol:
        script_execute(itemType,3)
        script_execute(itemMat[1],8,matNum,true)
        script_execute(itemType,4)
        script_execute(itemMat[2],4,matNum,true)
        break
        case itemTypeArmour:
        case itemTypePlating:
        script_execute(itemType,3)
        script_execute(itemMat[1],6,matNum,true)
        script_execute(itemType,4)
        script_execute(itemMat[2],7,matNum,true)        
        break
        }        
    }
    i -= 1
}

//Create Inventory Slots for Each Category
sortInventory()
}


#define inventoryRow
var count = 0
var list = ds_priority_create()

with(obj_item)
{
    if (ttType = argument0 or ttType = argument1) and inInventory = true
    {
        ds_priority_add(list,id,sprite_index+(itemQuality*1000))
        count += 1
    }
}

//Title
i = instance_create(430,72+(iy*22),obj_menuDivider)
i.text = argument2
i.hudY = iy
iy += 1

//Slots
count = ceil((count+1)/8)
repeat(count)
{
    repeat(8)
    {
        i = instance_create(352+(ix*22),72+(iy*22),obj_inventorySlot)
        i.sortSlot1 = argument0
        i.sortSlot2 = argument1
        i.hudY = iy
        ix += 1
        
        if !ds_priority_empty(list)
        {
            ii = ds_priority_delete_max(list)
            ii.lockx = i.x
            ii.locky = i.y
            ii.hudY = iy
            i.occupant = ii
        }
    }
    ix = 0
    iy += 1
}

#define sortInventory
with(obj_menuDivider)
{
    instance_destroy()
}

with(obj_inventorySlot)
{
    if equipSlot = false
    {
        instance_destroy()
    }
}

ix = 0
iy = 0

inventoryRow(itemTypeWeapon,itemTypeShield,'Melee Weapon')
inventoryRow(itemTypeRanged,itemTypePistol,'Ranged Weapon')
inventoryRow(itemTypePlating,itemTypeArmour,'Armour')
inventoryRow(itemTypeTrinket,itemTypeTrinket,'Trinket')
global.hudYMax = iy