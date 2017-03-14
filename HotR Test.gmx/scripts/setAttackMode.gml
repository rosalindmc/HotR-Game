if global.attackMode = argument0
{
    global.attackMode = -4
    global.attackModeNum = 0
    
    with(global.attackModeBuff)
    {
        instance_destroy()
    }
    
    global.attackModeBuff = -4
}
else
{
    global.attackMode = argument0
    global.attackModeNum = global.actionNum
    
    applyStatusEffect(argument1,global.control,argument2,0.1)
    global.attackModeBuff = ss
}
actionBarReset()
