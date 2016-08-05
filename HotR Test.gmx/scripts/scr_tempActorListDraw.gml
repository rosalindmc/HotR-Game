ii = 1
repeat(global.actorCount)
{
if ii = global.activeActor
{draw_set_colour(c_yellow)}
else
{draw_set_colour(c_white)}
draw_text(view_xview,view_yview+view_hview-10-(ii*15),global.actorList[ii].name)
ii += 1
}

draw_text(view_xview,view_yview+10,global.actorCount)
