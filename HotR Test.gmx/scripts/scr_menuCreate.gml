//Establish Menu Buttons
//scr_menuCreate()
//Run to create menus

switch(argument0)
{
case 0:     //Landing/MidGame Menu
if global.menu = true
{
i = instance_create(50,30,obj_menuTitle)
i.text = 'Heroes of the Commonwealth'

i = instance_create(32,60,obj_menuButton)
i.text = 'New Campaign' i.number = 0 i.descriptor = 'Start a new campaign of Heroes of the Commonwealth'

i = instance_create(32,90,obj_menuButton)
i.text = 'Load Campaign' i.number = 1 i.descriptor = 'Continue a campaign'

i = instance_create(32,120,obj_menuButton)
i.text = 'Settings' i.number = 2

i = instance_create(32,150,obj_menuButton)
i.text = 'Exit' i.number = 3
}
else
{
i = instance_create(32,60,obj_menuButton)
i.text = 'Exit to Menu' i.number = 15

i = instance_create(32,90,obj_menuButton)
i.text = 'Exit Game' i.number = 16

i = instance_create(32,120,obj_menuButton)
i.text = 'Settings' i.number = 2

i = instance_create(32,150,obj_menuButton)
i.text = 'Return to Game' i.number = 14
}
break

case 1:     //New Campaign Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Player Count'

i = instance_create(32,60,obj_menuButton)
i.text = 'Single Player' i.number = 5 i.descriptor = 'Start a singleplayer campaign'

i = instance_create(32,90,obj_menuButton)
i.text = 'Two Players' i.number = 6 i.descriptor = 'Battle a friend'

i = instance_create(32,120,obj_menuButton)
i.text = 'Three Players' i.number = 7 i.descriptor = 'Battle more friends'

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
i.text = 'Abilities' i.number = 12 i.font = fnt_smlMenu

i = instance_create(40,170,obj_menuButton)
i.text = 'Camera' i.number = 13 i.font = fnt_smlMenu

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
i.text = 'Abilities' i.number = 20 i.font = fnt_smlMenu

i = instance_create(40,170,obj_menuButton)
i.text = 'Camera' i.number = 13 i.font = fnt_smlMenu

scr_keybindCreate(2)

i = instance_create(544,320,obj_menuButton)
i.text = 'Return' i.number = 11
break

case 8:     //Keybind Menu
i = instance_create(50,30,obj_menuTitle)
i.text = 'Settings - Keybindings - Camera'

i = instance_create(32,60,obj_menuButton)
i.text = 'Audio' i.number = 8

i = instance_create(32,90,obj_menuButton)
i.text = 'Gameplay' i.number = 9

i = instance_create(32,120,obj_menuButton)
i.text = 'Keybindings' i.number = 20

i = instance_create(40,150,obj_menuButton)
i.text = 'Abilities' i.number = 12 i.font = fnt_smlMenu

i = instance_create(40,170,obj_menuButton)
i.text = 'Camera' i.number = 20 i.font = fnt_smlMenu

scr_keybindCreate(3)


i = instance_create(544,320,obj_menuButton)
i.text = 'Return' i.number = 11
break
}
