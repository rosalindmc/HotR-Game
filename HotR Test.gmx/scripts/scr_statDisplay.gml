//Draws all the stats beside the character.
draw_set_colour(c_white)
draw_set_font(fnt_statDisplay)

draw_text(x+15,y-45,"M:"+string(might))
draw_text(x+15,y-35,"T:"+string(toughness))
draw_text(x+15,y-25,"W:"+string(will))
draw_text(x+15,y-15,"I:"+string(intellect))
draw_text(x+15,y-5,"F:"+string(fellowship))
