//Personal space script
ii = 0
repeat(12)
{
i = size*2.5
 
draw_set_colour(c_white)

if collision_point(x+lengthdir_x(i,ii),y+lengthdir_y(i,ii),obj_solid,false,true)
{
    if collision_point(x+lengthdir_x(i,ii),y+lengthdir_y(i,ii),obj_solid,false,true).size >= size and !collision_point(x+lengthdir_x(i,ii+180),y+lengthdir_y(i,ii+180),obj_solid,false,true)
    {
    draw_set_colour(c_yellow)
    }
}

draw_line(x,y,x+lengthdir_x(i,ii),y+lengthdir_y(i,ii))
ii += 30
}
