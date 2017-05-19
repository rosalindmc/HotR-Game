//Draw an Actor and corresponding UI
if isoZ <= global.zLevel or global.zViewToggle = true
{ 
    shader_set_uniform_f(global.shader_light, 1, 1, 1, 1)
    global.lR = 1
    global.lG = 1
    global.lB = 1 
    global.alpha = 1
    
    //Selection is drawn first 
    //(This script will need to be altered when large creatures are implemented)       
    if controlled = true
    {
        draw_sprite(spr_selection,image_index,currentTile.x,currentTile.y-currentTile.h+(global.zLevel*15))
    }
    
    //Run Code to Draw Surface
    script_execute(animType,1)
    
    if hidden = true
    {
        if global.lR != currentTile.lR*.2 or global.lG != currentTile.lG*.2 or global.lB != currentTile.lB*.2 or global.alpha != currentTile.alpha*.5
        {
            shader_set_uniform_f(global.shader_light, currentTile.lR*.2, currentTile.lG*.2, currentTile.lB*.2, currentTile.alpha*.5)
            global.lR = currentTile.lR*.2
            global.lG = currentTile.lG*.2
            global.lB = currentTile.lB*.2
            global.alpha = currentTile.alpha*.5
        }
    }
    else
    {
        if global.lR != currentTile.lR or global.lG != currentTile.lG or global.lB != currentTile.lB or global.alpha != currentTile.alpha
        {
            shader_set_uniform_f(global.shader_light, currentTile.lR, currentTile.lG, currentTile.lB, currentTile.alpha)
            global.lR = currentTile.lR
            global.lG = currentTile.lG 
            global.lB = currentTile.lB 
            global.alpha = currentTile.alpha
        }
    }
    
    //Draw Self
    draw_surface(charSurf,x-round(50),y-round(75)-h+(global.zLevel*15))
    
    if global.surfX2 != 0
    {
        //Draw Block
        if surface_exists(global.blockSurf)
        {
            surface_set_target(global.blockSurf)
            draw_surface(charSurf,x-round(50)-global.surfX1,y-round(75)-global.surfY1-h)        
            surface_reset_target()
        }
        
        //Draw Reflection
        if surface_exists(global.reflectSurf)
        {
            surface_set_target(global.reflectSurf)
            draw_surface_ext(charSurf,x-round(50)-global.surfX1,y+81-global.surfY1-h+(h-((global.waterLevel*15)+7)),1,-1,0,c_white,1)
            surface_reset_target()
        }
    }
}

