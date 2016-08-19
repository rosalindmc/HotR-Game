//Selection is drawn first 
//(This script will need to be altered when large creatures are implemented)
if controlled = true
{
    draw_sprite(spr_selection,image_index,x,y-((isoZ-global.zLevel)*30))
}

//Draw Self
script_execute(animType,1)

//Draw Healthbar
if controlled = true
{
    draw_medHealthbar()

    //Put temporary testing scripts here
    //draw_text(x,y-80,facing)
    //draw_text(x,y-90,actionString)
    //If you want to know the value of a variable, find out what is breaking, etc.
    
    
}
