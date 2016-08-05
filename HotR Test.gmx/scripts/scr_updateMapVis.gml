//Update all the map visuals
//scr_updateMapVis

instance_activate_all();
instance_deactivate_region(view_xview[0]-20,view_yview-20,view_wview[0]+view_wview[0]+20,view_yview[0]+view_hview[0]+20,false,false)
instance_activate_object(obj_overworldVital)
/*
with(obj_parentTile)
{
    if point_in_rectangle(x,y,view_xview[0]-20,view_yview[0]-20,view_xview[0]+view_wview[0]+20,view_yview[0]+view_hview[0]+20)
    {
        vis = true
        instance_activate_object(self)
    }
    else
    {
        vis = false
        instance_deactivate_object(self)
    }
}
