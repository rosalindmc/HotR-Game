//Tear Down after Battle 
//battleTeardown()     Will feature variables later

instance_activate_all()

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


room_height = 3000
room_width = 4000



