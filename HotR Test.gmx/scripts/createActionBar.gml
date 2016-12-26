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
    i.sprite_index = spr_iconWait
}
