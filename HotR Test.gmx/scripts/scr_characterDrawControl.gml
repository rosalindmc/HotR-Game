//Selection circle is drawn first
if controlled = true
{
    draw_set_colour(c_green)
    draw_circle(round(x-1),round(y-fh),size,true)
}

//Draw Self
script_execute(animType,1)

//Draw Healthbar
if controlled = true
{
    draw_medHealthbar()

    //Put temporary testing scripts here
    //If you want to know the value of a variable, find out what is breaking, etc.
    
    
}
