//Open and write to the settings.ini to update new preferences
//scr_saveSettings()
//Run whenever you exit a settings screen

//Open the ini file for writing
ini_open("Settings.ini")

//Sound Settings
ini_write_real("Sound","ambienceVolume", global.ambienceVolume)
ini_write_real("Sound","effectVolume", global.effectVolume)
ini_write_real("Sound","musicVolume", global.musicVolume)
ini_write_real("Sound","voiceVolume", global.voiceVolume)

//Selection Keybindings
ini_write_real("Controls","select1", global.selectKey[1])
ini_write_real("Controls","select2", global.selectKey[2])
ini_write_real("Controls","select3", global.selectKey[3])
ini_write_real("Controls","select4", global.selectKey[4])
ini_write_real("Controls","select5", global.selectKey[5])

ini_write_real("Controls","selectGroup", global.selectGroup)

//Map Scrolling Keybindings
ini_write_real("Controls","up", global.upScroll)
ini_write_real("Controls","down", global.downScroll)
ini_write_real("Controls","left", global.leftScroll)
ini_write_real("Controls","right", global.rightScroll)


//Action Keybindings
ini_write_real("Controls","ability1", global.abilityKey[1])
ini_write_real("Controls","ability2", global.abilityKey[2])
ini_write_real("Controls","ability3", global.abilityKey[3])
ini_write_real("Controls","ability4", global.abilityKey[4])
ini_write_real("Controls","ability5", global.abilityKey[5])
ini_write_real("Controls","ability6", global.abilityKey[6])
ini_write_real("Controls","ability7", global.abilityKey[7])
ini_write_real("Controls","ability8", global.abilityKey[8])
ini_write_real("Controls","ability9", global.abilityKey[9])
ini_write_real("Controls","ability10", global.abilityKey[10])

ini_write_real("Controls","attack", global.attackKey)
ini_write_real("Controls","switch", global.switchKey)
ini_write_real("Controls","heal", global.healKey)

//Gameplay
ini_write_real("Gameplay","fps", global.fspd)
ini_write_real("Gameplay","commandMode", global.commandMode)

//Close the ini file
ini_close()
