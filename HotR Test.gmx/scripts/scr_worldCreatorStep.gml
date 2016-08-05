if !point_in_rectangle(x,y,0,0,room_width,room_height)
{
    instance_destroy()
}
else if delay = 0
{
    script_execute(biome)
}
else
{
    delay -= 1
}
