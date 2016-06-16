//Establish neccesary variables for terrain elements
//scr_initializeTerrain
//Run in create event of terrain elements

//Terrain elements are elements that are impassable and are drawn onto the path map 
//the addition or destruction of terrain elements forces a redraw of the path map

scr_depthCheck()

//Randomize visuals
image_index = random(image_number)
image_speed = 0

//Unmovable
size = 10000
moving = false
//Create a solid for collision
i = instance_create(x,y,obj_solid)
i.mask_index = mask_index
