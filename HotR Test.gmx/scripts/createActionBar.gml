#define createActionBar
//Script to make an Action Bar
//createActionBar()

with(obj_control)
{
    actNum = 0
    
    if embattled(global.control)
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.action = battle
        i.sprite_index = ico_attack
    }
    
    if global.control.isoTile.zoneControl = false
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.action = moveControl
        i.sprite_index = ico_attackMove
        
        //Run Move Control
        moveControl(0)
    }
    else
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.action = disengage
        i.sprite_index = ico_move
        
        //Run Battle
        battle(0)
    }
    
    if global.control.owner.invSlot[3,0] != emptySlot
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.action = weaponSwitch
        i.sprite_index = ico_switch
    }
    
    actNum += 1
    i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
    i.action = wait
    i.sprite_index = ico_wait
    
    for(iii = 0; iii < global.control.abilityNumber; iii++)
    {
        actNum += 1
        iv = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        iv.number = iii+1
        iv.action = global.control.ability[iii]
        iv.cooldown = global.control.abilityCD[iii]
        script_execute(global.control.ability[iii],4)
    }
}

#define actionBarReset
with(obj_actionButton)
{
    instance_destroy()
}

createActionBar()
