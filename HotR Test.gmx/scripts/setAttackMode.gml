with(obj_status)
{
    if type = 'Attack'
    {
        instance_destroy()
    }
}
    
if global.attackMode = argument0
{
    global.attackMode = -4
    global.attackModeNum = 0
    global.attackModeBuff = -4
}
else
{
    global.attackMode = argument0
    
    with(obj_actionButton)
    {
        if action = argument0
        {
            global.actionNum = actionNum
        }
    }
    
    global.attackModeNum = global.actionNum
    
    applyStatusEffect(argument1,global.control,argument2,0.1,-1)
    global.attackModeBuff = ss
}
actionBarReset()
