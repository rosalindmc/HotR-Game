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
        i.number = actNum
        i.sprite_index = ico_attack
    }
    
    if global.control.isoTile.zoneControl = false
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.action = moveControl
        i.number = actNum
        i.sprite_index = ico_attackMove
        
        //Run Move Control
        moveControl(0)
        
        if global.control.autoFire != false
        {
            actNum += 1
            i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
            i.action = autoBurst
            i.number = actNum
            i.sprite_index = ico_autoBurst
        }
    }
    else
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.action = disengage    
        i.number = actNum
        i.sprite_index = ico_move
        
        //Run Battle
        battle(0)
    }
    
    if global.control.shots[1] < global.control.maxShots[1] and global.control.invSwitch = 1
    {
        actNum += 1
        iv = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        iv.action = reload1
        iv.number = actNum
        iv.sprite_index = ico_reload
        script_execute(reload1,4)
    }
    
    if global.control.shots[2] < global.control.maxShots[2] and global.control.invSwitch = 1
    {
        actNum += 1
        iv = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        iv.action = reload2
        iv.number = actNum
        iv.sprite_index = ico_reload
        script_execute(reload2,4)
    }

    if global.control.shots[3] < global.control.maxShots[3] and global.control.invSwitch = 2
    {
        actNum += 1
        iv = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        iv.action = reload3
        iv.number = actNum
        iv.sprite_index = ico_reload
        script_execute(reload3,4)
    }
    
    if global.control.owner.invSlot[3,0] != emptySlot
    {
        actNum += 1
        i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        i.action = weaponSwitch
        i.number = actNum
        i.sprite_index = ico_switch
    }
    
    actNum += 1
    i = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
    i.action = wait
    i.number = actNum
    i.sprite_index = ico_wait
    
    for(iii = 0; iii < global.control.abilityNumber; iii++)
    {
        actNum += 1
        iv = instance_create(120+(actNum*20), view_hview-30, obj_actionButton)
        iv.number = actNum
        iv.actionNum = iii
        iv.action = global.control.ability[iii]
        iv.cooldown = global.control.abilityCD[iii]
        iv.charges = global.control.abilityCharges[iii]
        script_execute(global.control.ability[iii],4)
    }
    
    i = instance_create(view_wview-15,100, obj_sideButton)
    i.action = retreat
    i.number = 0
    i.sprite_index = ico_retreat
}

#define actionBarReset
with(obj_actionButton)
{
    instance_destroy()
}

createActionBar()