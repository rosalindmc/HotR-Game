//Personal space script
ii = 0
repeat(12)
{
i = size*2.5
 
if collision_point(x+lengthdir_x(i,ii),y+lengthdir_y(i,ii),obj_solid,false,true)
{
    if collision_point(x+lengthdir_x(i,ii),y+lengthdir_y(i,ii),obj_solid,false,true).size >= size and !collision_point(x+lengthdir_x(i,ii+180),y+lengthdir_y(i,ii+180),obj_solid,false,true)
    {
    hspd = hspd+lengthdir_x(movement*.1,ii+180)
    vspd = vspd+lengthdir_y(movement*.1,ii+180)
    movex += lengthdir_x(movement*.5,ii+180)
    movey += lengthdir_y(movement*.5,ii+180)
    }
}
ii += 30
}
