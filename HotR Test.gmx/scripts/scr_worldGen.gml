//World Generation Script
//scr_worldGen()

//Seed Load
//?

//Place Biome Nodes High Hearth
i = instance_create(10+(36*km),10+(42*km),obj_worldCreator)
i.biome = scr_queensField

i = instance_create(10+(32*km),10+(50*km),obj_worldCreator)
i.biome = scr_queensField

i = instance_create(10+(40*km),10+(52*km),obj_worldCreator)
i.biome = scr_hearthgrove

i = instance_create(10+(44*km),10+(48*km),obj_worldCreator)
i.biome = scr_hearthgrove

i = instance_create(10+(38*km),10+(46*km),obj_worldCreator)
i.biome = scr_hearthgrove

i = instance_create(10+(42*km),10+(48*km),obj_worldCreator)
i.biome = scr_highmount

i = instance_create(10+(44*km),10+(32*km),obj_worldCreator)
i.biome = scr_avangard

i = instance_create(10+(44*km),10+(36*km),obj_worldCreator)
i.biome = scr_avangard

i = instance_create(10+(48*km),10+(32*km),obj_worldCreator)
i.biome = scr_avangard

i = instance_create(10+(48*km),10+(44*km),obj_worldCreator)
i.biome = scr_elderSwamp

i = instance_create(10+(52*km),10+(40*km),obj_worldCreator)
i.biome = scr_elderSwamp

i = instance_create(10+(60*km),10+(36*km),obj_worldCreator)
i.biome = scr_elderSwamp

i = instance_create(10+(52*km),10+(28*km),obj_worldCreator)
i.biome = scr_coldfistTaiga

i = instance_create(10+(20*km),10+(32*km),obj_worldCreator)
i.biome = scr_coldfistTaiga

i = instance_create(10+(28*km),10+(28*km),obj_worldCreator)
i.biome = scr_coldfistTaiga

i = instance_create(10+(44*km),10+(22*km),obj_worldCreator)
i.biome = scr_coldfistTaiga

i = instance_create(10+(32*km),10+(18*km),obj_worldCreator)
i.biome = scr_coldfistTaiga

i = instance_create(10+(40*km),10+(32*km),obj_worldCreator)
i.biome = scr_coldfistTaiga

i = instance_create(10+(20*km),10+(0*km),obj_worldCreator)
i.biome = scr_savageTundra

i = instance_create(10+(44*km),10+(0*km),obj_worldCreator)
i.biome = scr_savageTundra


//Give Biome Nodes time to fill (30 frames)
alarm[0] = 30
