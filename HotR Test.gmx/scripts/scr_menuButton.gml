//Click on Menu button
//scr_menuButton(button)
//Run when a menu button is clicked

switch(argument0)
{
//New Campaign   
case 0: scr_menuClear() scr_menuCreate(1) break
//Load Campaign
case 1: scr_menuClear() scr_menuCreate(2) break
//Settings Menu
case 2: scr_menuClear() scr_menuCreate(3) break
//Exit
case 3: game_end() break
//Landing Menu
case 4: scr_menuClear() scr_menuCreate(0) break
//Campaign Starts
case 5: global.newGame = true global.menu = false global.playerCount = 1 room_goto_next() break
case 6: global.newGame = true global.menu = false global.playerCount = 2 room_goto_next() break
case 7: global.newGame = true global.menu = false global.playerCount = 3 room_goto_next() break

//Settings Menus
case 8: scr_menuClear() scr_menuCreate(4) break
case 9: scr_menuClear() scr_menuCreate(5) break
case 10: scr_menuClear() scr_menuCreate(6) break

case 12: scr_menuClear() scr_menuCreate(7) break
case 13: scr_menuClear() scr_menuCreate(8) break

//Return from settings
case 11: scr_menuClear() scr_saveSettings() scr_menuCreate(0) break

case 14: 
//Resume Playing
global.inMenu = false
obj_camera.x = global.camX
obj_camera.y = global.camY
    
with(obj_menuItems)
{
    instance_destroy()
}

with(obj_menuController)
{
    instance_destroy()
}
break

case 15:
//Save and Quit to Menu
//Save Script
game_restart()
break 

case 16:
//Save and Quit to Menu
//Save Script
game_end()
break 
}
