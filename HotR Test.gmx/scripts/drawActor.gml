//Draw an Actor and corresponding UI
if isoZ <= global.zLevel or global.zViewToggle = true
{ 
    //Selection is drawn first 
    //(This script will need to be altered when large creatures are implemented)
    if controlled = true
    {
        draw_sprite(spr_selection,image_index,currentTile.x,currentTile.y-currentTile.h+(global.zLevel*15))
    }
    
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
    script_execute(animType,1)
}

