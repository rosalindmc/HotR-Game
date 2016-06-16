//Establish Menu Buttons
//scr_menuCreate()
//Run to create menus

switch(argument0)
{
case 0:     //Landing Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Heroes of the Realm'

i = instance_create(32,60,obj_menuButton)
i.text = 'New Campaign' i.number = 0 i.descriptor = 'Start a new campaign of Heroes of the Realm'

i = instance_create(32,90,obj_menuButton)
i.text = 'Load Campaign' i.number = 1 i.descriptor = 'Continue a campaign'

i = instance_create(32,120,obj_menuButton)
i.text = 'Settings' i.number = 2

i = instance_create(32,150,obj_menuButton)
i.text = 'Exit' i.number = 3
break

case 1:     //New Campaign Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Difficulty'

i = instance_create(32,60,obj_menuButton)
i.text = 'Normal' i.number = 5 i.descriptor = 'Suggested difficulty for all first time players'

i = instance_create(32,90,obj_menuButton)
i.text = 'Heroic' i.number = 6 i.descriptor = 'Ideal for players who have mastered the core mechanics'

i = instance_create(32,120,obj_menuButton)
i.text = 'Nightmare' i.number = 7 i.descriptor = 'For players who found the other two difficulties too easy'

i = instance_create(544,320,obj_menuButton)
i.text = 'Return' i.number = 4
break

case 2:     //Load Menu   
i = instance_create(50,30,obj_menuTitle)
i.text = 'Load Campaign'

i = instance_create(544,320,obj_menuButton)
i.text = 'Return'
i.number = 4
break

case 3:     //Settings Menu 
i = instance_create(50,30,obj_menuTitle)
i.text = 'Settings'
 
i = instance_create(32,60,obj_menuButton)
i.text = 'Audio' i.number = 8

i = instance_create(32,90,obj_menuButton)
i.text = 'Gameplay' i.number = 9

i = instance_create(32,120,obj_menuButton)
i.text = 'Keybindings' i.number = 10

i = instance_create(544,320,obj_menuButton)
i.text = 'Return' i.number = 11
break

case 4:     //Audio Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Settings - Audio'

i = instance_create(32,60,obj_menuButton)
i.text = 'Audio' i.number = 20

i = instance_create(40,90,obj_sliderControl)
i.text = 'Effects' i.number = 0

i = instance_create(40,110,obj_sliderControl)
i.text = 'Voices' i.number = 1

i = instance_create(40,130,obj_sliderControl)
i.text = 'Music' i.number = 2

i = instance_create(40,150,obj_sliderControl)
i.text = 'Ambience' i.number = 3

i = instance_create(32,180,obj_menuButton)
i.text = 'Gameplay' i.number = 9

i = instance_create(32,210,obj_menuButton)
i.text = 'Keybindings' i.number = 10

i = instance_create(544,320,obj_menuButton)
i.text = 'Return'
i.number = 11
break

case 5:     //Gameplay Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Settings - Gameplay'

i = instance_create(32,60,obj_menuButton)
i.text = 'Audio' i.number = 8

i = instance_create(32,90,obj_menuButton)
i.text = 'Gameplay' i.number = 20

i = instance_create(40,120,obj_sliderControl)
i.text = 'Frame Rate' i.number = 4

i = instance_create(40,140,obj_menuToggle)
i.text = 'Command Mode' i.number = 0 i.descriptor = 'Allows you to use a key (default space) to toggle command mode, while in command mode the game speed is halved.  Command mode is intended for players unfamiliar with RTS controls or who are unable to input commands in a timely manner.'

i = instance_create(32,170,obj_menuButton)
i.text = 'Keybindings' i.number = 10

i = instance_create(544,320,obj_menuButton)
i.text = 'Return' i.number = 11
break

case 6:     //Keybind Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Settings - Keybindings - Selection'

i = instance_create(32,60,obj_menuButton)
i.text = 'Audio' i.number = 8

i = instance_create(32,90,obj_menuButton)
i.text = 'Gameplay' i.number = 9

i = instance_create(32,120,obj_menuButton)
i.text = 'Keybindings' i.number = 20

i = instance_create(40,150,obj_menuButton)
i.text = 'Selection' i.number = 20 i.font = fnt_smlMenu

i = instance_create(40,170,obj_menuButton)
i.text = 'Abilities' i.number = 12 i.font = fnt_smlMenu

i = instance_create(40,190,obj_menuButton)
i.text = 'Other' i.number = 13 i.font = fnt_smlMenu

scr_keybindCreate(1)


i = instance_create(544,320,obj_menuButton)
i.text = 'Return' i.number = 11
break

case 7:     //Keybind Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Settings - Keybindings - Abilities'

i = instance_create(32,60,obj_menuButton)
i.text = 'Audio' i.number = 8

i = instance_create(32,90,obj_menuButton)
i.text = 'Gameplay' i.number = 9

i = instance_create(32,120,obj_menuButton)
i.text = 'Keybindings' i.number = 20

i = instance_create(40,150,obj_menuButton)
i.text = 'Selection' i.number = 10 i.font = fnt_smlMenu

i = instance_create(40,170,obj_menuButton)
i.text = 'Abilities' i.number = 20 i.font = fnt_smlMenu

i = instance_create(40,190,obj_menuButton)
i.text = 'Other' i.number = 13 i.font = fnt_smlMenu

scr_keybindCreate(2)


i = instance_create(544,320,obj_menuButton)
i.text = 'Return' i.number = 11
break

case 8:     //Keybind Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Settings - Keybindings - Other'

i = instance_create(32,60,obj_menuButton)
i.text = 'Audio' i.number = 8

i = instance_create(32,90,obj_menuButton)
i.text = 'Gameplay' i.number = 9

i = instance_create(32,120,obj_menuButton)
i.text = 'Keybindings' i.number = 20

i = instance_create(40,150,obj_menuButton)
i.text = 'Selection' i.number = 10 i.font = fnt_smlMenu

i = instance_create(40,170,obj_menuButton)
i.text = 'Abilities' i.number = 12 i.font = fnt_smlMenu

i = instance_create(40,190,obj_menuButton)
i.text = 'Other' i.number = 20 i.font = fnt_smlMenu

scr_keybindCreate(3)


i = instance_create(544,320,obj_menuButton)
i.text = 'Return' i.number = 11
break
}
