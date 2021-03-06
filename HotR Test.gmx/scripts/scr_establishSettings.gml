//Initialise all the settings
//scr_establishSettings()
//Run on game start up

//Open the ini file for reading
ini_open("Settings.ini")

//Sound Settings
global.ambienceVolume = ini_read_real("Sound", "ambienceVolume", 1)
global.effectVolume = ini_read_real("Sound", "effectVolume", 1)
global.musicVolume = ini_read_real("Sound", "musicVolume", 1)
global.voiceVolume = ini_read_real("Sound", "voiceVolume", 1)

//Selection Keybindings (No Longer Relevant)
global.selectKey[1] = ini_read_real("Controls", "select1", ord('1'))
global.selectKey[2] = ini_read_real("Controls", "select2", ord('2'))
global.selectKey[3] = ini_read_real("Controls", "select3", ord('3'))
global.selectKey[4] = ini_read_real("Controls", "select4", ord('4'))
global.selectKey[5] = ini_read_real("Controls", "select5", ord('5'))
global.selectGroup = ini_read_real("Controls", "selectGroup", vk_shift)

//Map Scrolling Keybindings
global.upScroll = ini_read_real("Controls", "up", vk_up)
global.downScroll = ini_read_real("Controls", "down", vk_down)
global.leftScroll = ini_read_real("Controls", "left", vk_left)
global.rightScroll = ini_read_real("Controls", "right", vk_right)

//Action Keybindings
global.abilityKey[1] = ini_read_real("Controls", "ability1", ord('1'))
global.abilityKey[2] = ini_read_real("Controls", "ability2", ord('2'))
global.abilityKey[3] = ini_read_real("Controls", "ability3", ord('3'))
global.abilityKey[4] = ini_read_real("Controls", "ability4", ord('4'))
global.abilityKey[5] = ini_read_real("Controls", "ability5", ord('5'))
global.abilityKey[6] = ini_read_real("Controls", "ability6", ord('6'))
global.abilityKey[7] = ini_read_real("Controls", "ability7", ord('7'))
global.abilityKey[8] = ini_read_real("Controls", "ability8", ord('8'))
global.abilityKey[9] = ini_read_real("Controls", "ability9", ord('9'))
global.abilityKey[10] = ini_read_real("Controls", "ability10", ord('10'))

global.attackKey = ini_read_real("Controls", "attack", ord('A'))
global.switchKey = ini_read_real("Controls", "switch", ord('S'))
global.centerKey = ini_read_real("Controls", "center", vk_space)
global.meleeToggle = ini_read_real("Controls", "meleeToggle", vk_lshift)

//Gameplay
global.fspd = ini_read_real("Gameplay", "fps", 60)

//Close the ini file
ini_close()

//Not a NewGame
global.newGame = false
