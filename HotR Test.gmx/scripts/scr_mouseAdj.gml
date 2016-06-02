//Adjusts the global.mouseHAdj variable
//scr_mouseAdj()

if collision_point(mouse_x,mouse_y,obj_hAdjmap,true,true)
{
    fid = collision_point(mouse_x,mouse_y,obj_hAdjmap,true,true).host

    if fid.rampAdj = false
    {
        global.mouseHAdj = fid.h
    }
    else
    {
        script_execute(fid.rampAdj)
        global.mouseHAdj = fh
    }
}
else
{
    global.mouseHAdj = -1000
}
