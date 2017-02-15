//Script to make an Action Bar
//createActionBar()

with(obj_control)
{
    actNum = 0
    
    if embattled(global.control)
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.number = actNum
        i.action = battle
        i.sprite_index = ico_attack
    }
    
    if global.control.isoTile.zoneControl = false
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.number = actNum
        i.action = moveControl
        i.sprite_index = ico_attackMove
        
        //Run Move Control
        moveControl(0)
    }
    else
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.number = actNum
        i.action = disengage
        i.sprite_index = ico_move
        
        //Run Battle
        battle(0)
    }
    
    
    if global.control.owner.invSlot[3,0] != emptySlot
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.number = actNum
        i.action = weaponSwitch
        i.sprite_index = ico_switch
    }
    
    actNum += 1
    i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
    i.number = actNum
    i.action = wait
    i.sprite_index = ico_wait
    
}
