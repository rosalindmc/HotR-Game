//Tear Down after Battle 
//battleTeardown()     Will feature variables later

instance_activate_all()
instance_deactivate_object(obj_characterSheet)

with(obj_control)
{
    instance_destroy()
}

with(obj_combatHUD)
{
    instance_destroy()
}

with(obj_allVisible)
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
