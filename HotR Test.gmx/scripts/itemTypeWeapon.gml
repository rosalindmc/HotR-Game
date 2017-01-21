#define itemTypeWeapon
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+80,y+48+24,false)
draw_set_colour(c_black)
draw_rectangle(x+10,y-10,x+80,y+48+24,true)

draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_tinyText)

ix = x+12
iy = y-8

draw_text(ix,iy,name)
iy += 12
draw_text(ix,iy,string_format(dmg,2,1)+' '+string(dmgType))
iy += 12
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 12
draw_text(ix,iy,'PEN: '+string_format(pen,2,0))
iy += 12
draw_text_ext(ix,iy,tooltip,12,66)

draw_set_alpha(1)



#define itemTypeRanged
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+80,y+60+24,false)
draw_set_colour(c_black)
draw_rectangle(x+10,y-10,x+80,y+60+24,true)

draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_tinyText)

ix = x+12
iy = y-8

draw_text(ix,iy,name)
iy += 12
draw_text(ix,iy,'POW: '+string_format(dmg,2,1))
iy += 12
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 12
draw_text(ix,iy,'PEN: ')
iy += 12
draw_text_ext(ix,iy,tooltip,12,66)

draw_set_alpha(1)


#define itemTypeShield
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+80,y+60+24,false)
draw_set_colour(c_black)
draw_rectangle(x+10,y-10,x+80,y+60+24,true)

draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_tinyText)

ix = x+12
iy = y-8

draw_text(ix,iy,name)
iy += 12
draw_text(ix,iy,'Block: '+string(blockStr))
iy += 12
draw_text(ix,iy,'Speed: '+string_format(1/blockGen,2,1))
iy += 12
draw_text_ext(ix,iy,tooltip,12,66)

draw_set_alpha(1)


#define itemTypeArmour
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+80,y+48+24,false)
draw_set_colour(c_black)
draw_rectangle(x+10,y-10,x+80,y+48+24,true)

draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_tinyText)

ix = x+12
iy = y-8

draw_text(ix,iy,name)
iy += 12
draw_text(ix,iy,'ARM: '+string_format(arm/4,2,2))
iy += 12
draw_text(ix,iy,'DODGE: '+string(dodge)+'%')
iy += 12
draw_text(ix,iy,'PROT: '+string(prot)+'%')
iy += 12
draw_text(ix,iy,'ENC: '+string(enc)+'%')
iy += 12
draw_text_ext(ix,iy,tooltip,12,66)

draw_set_alpha(1)


#define itemTypeTrinket
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+80,y+60+24,false)
draw_set_colour(c_black)
draw_rectangle(x+10,y-10,x+80,y+60+24,true)

draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_tinyText)

ix = x+12
iy = y-8

draw_text(ix,iy,name)
iy += 12
draw_text(ix,iy,'POW: '+string_format(dmg,2,1))
iy += 12
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 12
draw_text(ix,iy,'PEN: ')
iy += 12
draw_text_ext(ix,iy,tooltip,12,66)


draw_set_alpha(1)