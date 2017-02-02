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
#define loseMoney
//loseMoney(money)

//Add Item to active parties inventory
ii = min(argument0,global.eventActor.money)
global.eventActor.money -= ii

createNotification('Lost $'+string_format(ii,2,2),ico_money,1)

#define gainExperience
//gainExperience(exp)

//Add Item to active parties inventory
global.eventCharacter.experience += argument0
createNotification(string(global.eventCharacter.firstName)+' +'+string_format(argument0,2,0)+'xp',ico_experience,0)
checkLevelUp(global.eventCharacter)