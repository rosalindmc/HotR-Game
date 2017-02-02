//Script to make an Action Bar
//createActionBar()

with(obj_control)
{
    actNum = 0
    
    actNum += 1
    i = instance_create(100+(actNum*20), view_hview-30, obj_actionButton)
    i.number = actNum

    actNum += 1
    i = instance_create(100+(actNum*20), view_hview-30, obj_actionButton)
    i.number = actNum
    i.action = wait
    i.sprite_index = ico_wait
    
    if global.control.owner.invSlot[3,0] != emptySlot
    {
        actNum += 1
        i = instance_create(100+(actNum*20), view_hview-30, obj_actionButton)
        i.number = actNum
        i.action = weaponSwitch
        i.sprite_index = ico_switch
    }
}
