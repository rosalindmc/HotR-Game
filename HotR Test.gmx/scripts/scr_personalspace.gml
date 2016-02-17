//Personal space script
//scr_personalspace()

var ii = 0
var i = size*1.5
var collideOther = -4
repeat(12)
{
    if collision_point(x+lengthdir_x(i,ii),y+lengthdir_y(i,ii),obj_solid,false,true)
    {
        collideOther = collision_point(x+lengthdir_x(i,ii),y+lengthdir_y(i,ii),obj_solid,false,true) 
        if collideOther.size >= size and !collision_point(x+lengthdir_x(i,ii+180),y+lengthdir_y(i,ii+180),obj_solid,false,true)
        {
        hspd = hspd+lengthdir_x(movement*.1,ii+180)
        vspd = vspd+lengthdir_y(movement*.1,ii+180)
        movex += lengthdir_x(movement*.5,ii+180)
        movey += lengthdir_y(movement*.5,ii+180)
        }
    }
    ii += 30
}
