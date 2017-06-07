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
global.eventActor.inventory[ii,5] = argument5 
global.eventActor.inventory[ii,6] = argument6
global.eventActor.inventory[ii,7] = argument7
global.eventActor.inventorySize += 1

global.charSelect = global.eventCharacter 
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
createNotification(string(global.eventCharacter.firstName)+' +'+string_format(argument0,2,1)+'xp',ico_experience,0)
checkLevelUp(global.eventCharacter)
#define itemList
return choose(
    choose(knife,dagger,epee,armingSword,greatSword,longSword,shortSword,sabre,rapier,bastardSword),
    choose(handAxe,battleAxe,greatAxe),
    choose(halberd,shortSpear,spear,pike),
    choose(maul,lightMace,mace,hammer,warhammer,staff),
    choose(chainMail,chainShirt,breastPlate,robe,dress),
    choose(heaterShield,squareShield,roundShield),
    choose(shortBow,lightCrossbow,crossbow,longBow),
    choose(automatic,revolver,handCannon,repeaterCarbine,carbine,longRifle,recoilessRifle))


#define gainPartyMember
//Culture
createCharacterSheet(global.eventActor,argument0)

createNotification(i.firstName,ico_bold,0)