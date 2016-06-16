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

//Selection Keybindings
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
global.abilityKey[1] = ini_read_real("Controls", "ability1", ord('Q'))
global.abilityKey[2] = ini_read_real("Controls", "ability2", ord('W'))
global.abilityKey[3] = ini_read_real("Controls", "ability3", ord('E'))
global.abilityKey[4] = ini_read_real("Controls", "ability4", ord('R'))
global.abilityKey[5] = ini_read_real("Controls", "ability5", ord('T'))
global.abilityKey[6] = ini_read_real("Controls", "ability6", ord('Y'))
global.abilityKey[7] = ini_read_real("Controls", "ability7", ord('U'))
global.abilityKey[8] = ini_read_real("Controls", "ability8", ord('I'))
global.abilityKey[9] = ini_read_real("Controls", "ability9", ord('O'))
global.abilityKey[10] = ini_read_real("Controls", "ability10", ord('P'))

global.attackKey = ini_read_real("Controls", "attack", ord('A'))
global.switchKey = ini_read_real("Controls", "switch", ord('S'))
global.healKey = ini_read_real("Controls", "heal", ord('D'))
global.commandKey = ini_read_real("Controls", "commandToggle", false)

//Gameplay
global.fspd = ini_read_real("Gameplay", "fps", 60)
global.commandMode = ini_read_real("Gameplay", "commandMode", false)

//Close the ini file
ini_close()
