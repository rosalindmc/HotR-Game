if global.inMenu = 1
{
    if global.subTab = 0 and global.menuSheet = 0
    {
        destroyInventory()
    }
    with(obj_hudParent)
    {
        instance_destroy()
    }
    global.inMenu = 0
    global.subTab = -4
    global.menuSheet = -4
}
else if global.inMenu != 2
{
    global.inMenu = 2
    instance_create(0,0,obj_menuController)
    global.camX = obj_camera.x 
    global.camY = obj_camera.y    
    obj_camera.x = 0
    obj_camera.y = 0
}
else
{
    global.inMenu = false
    obj_camera.x = global.camX
    obj_camera.y = global.camY
    view_xview = max(obj_camera.x-(view_wview/2),0)
    view_yview = max(obj_camera.y-(view_hview/2),0)
    worldScrollVis()
    
    with(obj_menuItems)
    {
        instance_destroy()
    }
    
    with(obj_menuController)
    {
        instance_destroy()
    }
}
