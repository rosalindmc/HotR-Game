#define itemTypeWeapon
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+120,y+48+52,false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,y-10,x+120,y+48+52,true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = x+15
iy = y-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tooltip)
iy += 20
draw_text(ix,iy,string_format(dmg,2,1)+' '+string(damageType(dmgType)))
draw_set_font(fnt_tinyText)
iy += 14
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 14
draw_text(ix,iy,'PEN:')

i = 0
ax = ix+25
repeat(floor(pen/4))
{
    draw_sprite(spr_bigArmIcon,0,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4,ax,iy+7)
    ax += 7
    i += 4
}
if pen > i
{
    draw_sprite(spr_bigArmIcon,pen-i,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4+pen-i,ax,iy+7)
}

iy += 28
draw_text_ext(ix,iy,tooltip,12,100)

draw_set_alpha(1)



#define itemTypeRanged
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+120,y+60+38,false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,y-10,x+120,y+60+38,true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = x+15
iy = y-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tooltip)
iy += 20
draw_text(ix,iy,string_format(dmg,2,1)+' '+string(damageType(dmgType)))
draw_set_font(fnt_tinyText)
iy += 14
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 14
draw_text(ix,iy,'PEN: ')

if pen/4 < 5
{
    i = 0
    ax = ix+25
    repeat(floor(pen/4))
    {
        draw_sprite(spr_bigArmIcon,0,ax,iy+7)
        draw_sprite(spr_bigArmIcon,4,ax,iy+7)
        ax += 7
        i += 4
    }
    if pen > i
    {
        draw_sprite(spr_bigArmIcon,pen-i,ax,iy+7)
        draw_sprite(spr_bigArmIcon,4+pen-i,ax,iy+7)
    }
}
else
{
    draw_text(ix+20,iy,string(floor(pen/4)))
    draw_sprite(spr_bigArmIcon,0,ix+40,iy+7) 
    draw_sprite(spr_bigArmIcon,4,ix+40,iy+7) 
}

iy += 28
draw_text_ext(ix,iy,tooltip,12,100)

draw_set_alpha(1)


#define itemTypeShield
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+120,y+60+24,false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,y-10,x+120,y+60+24,true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = x+15
iy = y-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tinyText)
iy += 20
draw_text(ix,iy,'BLOCK:')

i = 0
ax = ix+38
repeat(floor(blockStr/4))
{
    draw_sprite(spr_bigArmIcon,0,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4,ax,iy+7)
    ax += 7
    i += 4
}
if blockStr > i
{
    draw_sprite(spr_bigArmIcon,blockStr-i,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4+blockStr-i,ax,iy+7)
}

iy += 14
draw_text(ix,iy,'SPEED: '+string_format(1/blockGen,2,1))
iy += 14
draw_text(ix,iy,'ENC: '+string_format(1/enc,2,1))
iy += 28
draw_text_ext(ix,iy,tooltip,12,100)

draw_set_alpha(1)


#define itemTypeArmour
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+120,y+60+38,false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,y-10,x+120,y+60+38,true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = x+15
iy = y-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tinyText)
iy += 20
draw_text(ix,iy,'ARM:')

i = 0
ax = ix+28
repeat(floor(arm/4))
{
    draw_sprite(spr_bigArmIcon,0,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4,ax,iy+7)
    ax += 7
    i += 4
}
if arm > i
{
    draw_sprite(spr_bigArmIcon,arm-i,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4+arm-i,ax,iy+7)
}

iy += 14
draw_text(ix,iy,'DODGE: '+string(dodge)+' %')
iy += 14
draw_text(ix,iy,'ENC: '+string(enc)+' %')
iy += 28
draw_text_ext(ix,iy,tooltip,12,100)

draw_set_alpha(1)


#define itemTypeTrinket
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+120,y+60+24,false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,y-10,x+120,y+60+24,true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = x+15
iy = y-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tinyText)
iy += 20
draw_text(ix,iy,'pow: '+string_format(dmg,2,1))
iy += 14
draw_text(ix,iy,'rat: '+string_format(rat,2,1))
iy += 14
draw_text(ix,iy,'pen: ')
iy += 14
draw_text_ext(ix,iy,tooltip,12,100)


draw_set_alpha(1)
#define itemTypePlating
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+120,y+60+38,false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,y-10,x+120,y+60+38,true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = x+15
iy = y-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tinyText)
iy += 20
draw_text(ix,iy,'ARM:')

i = 0
ax = ix+28
repeat(floor(arm/4))
{
    draw_sprite(spr_bigArmIcon,0,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4,ax,iy+7)
    ax += 7
    i += 4
}
if arm > i
{
    draw_sprite(spr_bigArmIcon,arm-i,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4+arm-i,ax,iy+7)
}

iy += 14
draw_text(ix,iy,'DODGE: '+string(dodge)+' %')
iy += 14
draw_text(ix,iy,'ENC: '+string(enc)+' %')
iy += 28
draw_text_ext(ix,iy,tooltip,12,100)

draw_set_alpha(1)
#define itemTypePistol
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+120,y+60+38,false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,y-10,x+120,y+60+38,true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = x+15
iy = y-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tooltip)
iy += 20
draw_text(ix,iy,string_format(dmg,2,1)+' '+string(damageType(dmgType)))
draw_set_font(fnt_tinyText)
iy += 14
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 14
draw_text(ix,iy,'PEN: ')

i = 0
ax = ix+25
repeat(floor(pen/4))
{
    draw_sprite(spr_bigArmIcon,0,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4,ax,iy+7)
    ax += 7
    i += 4
}
if pen > i
{
    draw_sprite(spr_bigArmIcon,pen-i,ax,iy+7)
    draw_sprite(spr_bigArmIcon,4+pen-i,ax,iy+7)
}

iy += 28
draw_text_ext(ix,iy,tooltip,12,100)

draw_set_alpha(1)