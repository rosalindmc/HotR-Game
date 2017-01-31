#define eventActions


#define gainItem
//gainItem(itemType,rarity,quality1,quality2,quality3)


//Add Item to active parties inventory

ii = global.eventActor.inventorySize
global.eventActor.inventory[ii,0] = argument0
global.eventActor.inventory[ii,1] = argument1
global.eventActor.inventory[ii,2] = argument2
global.eventActor.inventory[ii,3] = argument3
global.eventActor.inventory[ii,4] = argument4
global.eventActor.inventorySize += 1

script_execute(argument0,0)

createNotification(name,sprite_index,argument1)

#define gainMoney
//gainMoney(money)

//Add Item to active parties inventory
global.eventActor.money += argument0

createNotification('Gained $'+string_format(argument0,2,2),ico_money,0)
