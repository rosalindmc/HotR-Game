ii = instance_create(argument1.x,argument1.y-argument1.h-argument1.height,obj_descriptor)
ii.text = argument0
ii.font = fnt_tinyText

with(obj_descriptor)
{
    if owner = argument1
    {
        other.ii.alarm[0] += global.fspd*.50
        other.ii.y += 20
    }
}

ii.owner = argument1

return ii
