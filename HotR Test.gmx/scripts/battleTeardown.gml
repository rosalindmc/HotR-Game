//Tear Down after Battle 
//battleTeardown()     Will feature variables later

instance_activate_all()
instance_deactivate_object(obj_characterSheet)

with(obj_control)
{
    if runEvent = true
    {
        eventStart(eventName,eventLine)
    }
    
    instance_destroy()
}

with(obj_combatHUD)
{
    instance_destroy()
}

with(obj_character)
{
    if dead = false
    {
        if important = true    //Demake Tool for non-mooks
        {
            owner.experience += global.expTotal*(1-((cunning-8)*.03))
            checkLevelUp(owner)
        }
        else                    //Demake Tool for mooks
        {
            with(owner)
            {
                instance_destroy()
            }
        }
        instance_destroy()
    }
}

with(obj_terrain)
{
    instance_destroy()
}

with(obj_tile)
{
    instance_destroy()
}

room_width = 20+(obj_overworldControl.mapWidth*20)
room_height = 22+(obj_overworldControl.mapHeight*20)

obj_camera.x = global.activeActor.x
obj_camera.y = global.activeActor.y
view_xview = median(obj_camera.x-(view_wview/2),0,room_width-view_wview)
view_yview = median(obj_camera.y-(view_hview/2),0,room_height-view_hview)

with(obj_overworldControl)
{
    worldScrollVis()
}

