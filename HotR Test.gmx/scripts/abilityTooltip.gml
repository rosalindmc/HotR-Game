if tooltipTitle != -4
{
ix = view_xview+110
iy = view_yview+view_hview-80

draw_set_colour(c_dkgray)
draw_rectangle(ix,iy,ix+120,iy+40,false)
draw_set_colour(c_ltgray)
draw_rectangle(ix,iy,ix+120,iy+40,true)

draw_set_colour(c_white)
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

iy += 4
draw_text(ix+60,iy,tooltipTitle)
draw_set_halign(fa_left)
draw_set_font(fnt_smallText)
iy += 20
draw_text(ix+5,iy,abilityTT)
}
