//Create the Action Bar 
createActionBar()

//Run Move Control
moveControl(0)

//View
obj_camera.x = global.control.x
obj_camera.y = global.control.y
global.zLevel = global.control.isoZ
updateScrollVis()
