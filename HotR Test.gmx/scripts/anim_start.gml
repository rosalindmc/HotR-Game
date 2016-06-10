//Holding animation for melee weapons
//anim_start(animtrack,animStep)

animStep[argument0] = 0
alarm[5+argument0] = 1
animIndex[argument0] = argument1
script_execute(argument1,argument0,0)
