#define itemTypeWeapon
draw_set_alpha(tt)

ix = x
iy = y

if iy+94+(ttLength*12) > view_hview[]+view_yview[]
{
    iy += (view_hview[]+view_yview[])-(iy+94+(ttLength*12))
}

draw_set_colour(c_dkgray)
draw_rectangle(ix+10,iy-10,ix+120,iy+92+(ttLength*12),false)
draw_set_colour(c_black)
draw_rectangle(ix+10,iy-10,ix+120,iy+92+(ttLength*12),true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = ix+15
iy = iy-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tooltip)
iy += 18
draw_text(ix,iy,string_format(dmg,2,1)+' '+string(damageType(dmgType)))
draw_set_font(fnt_tinyText)
iy += 14
draw_text(ix,iy,string(mat1)+' - '+string(mat2))
iy += 12
if wrongProf != 0{draw_set_colour(c_red)}
draw_text(ix,iy,string(profTypeText(itemProf[0])))
iy += 12
if wrongSize = true{draw_set_colour(c_red)}else{draw_set_colour(c_white)}
draw_text(ix,iy,'SIZE: '+string(itemSizeText(iSize)))
draw_set_colour(c_white)
iy += 12
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 12
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

//Tooltip
for(i = 0; i < ttLength; i++)
{
    iy += 12
    draw_set_colour(tooltipColour[i])
    draw_text_ext(ix,iy,tooltip[i],12,100)
}

//Draw the Tooltip detail boxes
ix = view_xview[]
iy = view_yview[]+view_hview[]-(ttTotalLength*12)-(ttLength*4)-1

for(i = 0; i < ttLength; i++)
{
    draw_set_colour(c_dkgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,false)
    draw_set_colour(c_ltgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,true)
    draw_set_colour(c_white)
    draw_text_ext(ix+5,iy+2,tooltipText[i],12,110)
    iy += (tooltipLength[i]*12)+4
}

draw_set_alpha(1)



#define itemTypeRanged
draw_set_alpha(tt)

ix = x
iy = y

if iy+118+(ttLength*12) > view_hview[]+view_yview[]
{
    iy += (view_hview[]+view_yview[])-(iy+118+(ttLength*12))
}

draw_set_colour(c_dkgray)
draw_rectangle(ix+10,iy-10,ix+120,iy+116+(ttLength*12),false)
draw_set_colour(c_black)
draw_rectangle(ix+10,iy-10,ix+120,iy+116+(ttLength*12),true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = ix+15
iy = iy-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tooltip)
iy += 18
draw_text(ix,iy,string_format(dmg,2,1)+' '+string(damageType(dmgType)))
draw_set_font(fnt_tinyText)
iy += 14
draw_text(ix,iy,string(mat1)+' - '+string(mat2))
iy += 12
if wrongProf != 0{draw_set_colour(c_red)}
draw_text(ix,iy,string(profTypeText(itemProf[0])))
iy += 12
if wrongSize = true{draw_set_colour(c_red)}else{draw_set_colour(c_white)}
draw_text(ix,iy,'SIZE: '+string(itemSizeText(iSize)))
draw_set_colour(c_white)
iy += 12
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 12
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

iy += 12
draw_text(ix,iy,'SHOTS: '+string_format(shots,2,0))
iy += 12
draw_text(ix,iy,'RANGE: '+string_format(rng,2,0)+'m')

//Tooltip
for(i = 0; i < ttLength; i++)
{
    iy += 12
    draw_set_colour(tooltipColour[i])
    draw_text_ext(ix,iy,tooltip[i],12,100)
}

//Draw the Tooltip detail boxes
ix = view_xview[]
iy = view_yview[]+view_hview[]-(ttTotalLength*12)-(ttLength*4)-1

for(i = 0; i < ttLength; i++)
{
    draw_set_colour(c_dkgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,false)
    draw_set_colour(c_ltgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,true)
    draw_set_colour(c_white)
    draw_text_ext(ix+5,iy+2,tooltipText[i],12,110)
    iy += (tooltipLength[i]*12)+4
}

draw_set_alpha(1)


#define itemTypePistol
draw_set_alpha(tt)

ix = x
iy = y

if iy+118+(ttLength*12) > view_hview[]+view_yview[]
{
    iy += (view_hview[]+view_yview[])-(iy+118+(ttLength*12))
}

draw_set_colour(c_dkgray)
draw_rectangle(ix+10,iy-10,ix+120,iy+116+(ttLength*12),false)
draw_set_colour(c_black)
draw_rectangle(ix+10,iy-10,ix+120,iy+116+(ttLength*12),true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = ix+15
iy = iy-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tooltip)
iy += 18
draw_text(ix,iy,string_format(dmg,2,1)+' '+string(damageType(dmgType)))
draw_set_font(fnt_tinyText)
iy += 14
draw_text(ix,iy,string(mat1)+' - '+string(mat2))
iy += 12
if wrongProf != 0{draw_set_colour(c_red)}
draw_text(ix,iy,string(profTypeText(itemProf[0])))
iy += 12
if wrongSize = true{draw_set_colour(c_red)}else{draw_set_colour(c_white)}
draw_text(ix,iy,'SIZE: '+string(itemSizeText(iSize)))
draw_set_colour(c_white)
iy += 12
draw_text(ix,iy,'RAT: '+string_format(rat,2,1))
iy += 12
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

iy += 12
draw_text(ix,iy,'SHOTS: '+string_format(shots,2,0))
iy += 12
draw_text(ix,iy,'RANGE: '+string_format(rng,2,0)+'m')

//Tooltip
for(i = 0; i < ttLength; i++)
{
    iy += 12
    draw_set_colour(tooltipColour[i])
    draw_text_ext(ix,iy,tooltip[i],12,100)
}

//Draw the Tooltip detail boxes
ix = view_xview[]
iy = view_yview[]+view_hview[]-(ttTotalLength*12)-(ttLength*4)-1

for(i = 0; i < ttLength; i++)
{
    draw_set_colour(c_dkgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,false)
    draw_set_colour(c_ltgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,true)
    draw_set_colour(c_white)
    draw_text_ext(ix+5,iy+2,tooltipText[i],12,110)
    iy += (tooltipLength[i]*12)+4
}

draw_set_alpha(1)

#define itemTypeShield
draw_set_alpha(tt)

iy = y

if iy+92+(ttLength*12) > view_hview[]+view_yview[]
{
    iy += (view_hview[]+view_yview[])-(iy+92+(ttLength*12))
}

draw_set_colour(c_dkgray)
draw_rectangle(x+10,iy-10,x+120,iy+90+(ttLength*12),false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,iy-10,x+120,iy+90+(ttLength*12),true)

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
iy += 18
draw_text(ix,iy,string(mat1)+' - '+string(mat2))
iy += 12
if wrongProf != 0{draw_set_colour(c_red)}
draw_text(ix,iy,string(profTypeText(itemProf[0])))
iy += 12
if wrongSize = true{draw_set_colour(c_red)}else{draw_set_colour(c_white)}
draw_text(ix,iy,'SIZE: '+string(itemSizeText(iSize)))
draw_set_colour(c_white)
iy += 12
draw_text(ix,iy,'BLOCK:')

i = 0
ax = ix+36
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

iy += 12
draw_text(ix,iy,'SPEED: '+string_format(1/blockGen,2,1))
iy += 12
draw_text(ix,iy,'ENC: '+string_format(enc,2,0)+' %')

//Tooltip
for(i = 0; i < ttLength; i++)
{
    iy += 12
    draw_set_colour(tooltipColour[i])
    draw_text_ext(ix,iy,tooltip[i],12,100)
}

//Draw the Tooltip detail boxes
ix = view_xview[]
iy = view_yview[]+view_hview[]-(ttTotalLength*12)-(ttLength*4)-1

for(i = 0; i < ttLength; i++)
{
    draw_set_colour(c_dkgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,false)
    draw_set_colour(c_black)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,true)
    draw_set_colour(c_white)
    draw_text_ext(ix+5,iy+2,tooltipText[i],12,110)
    iy += (tooltipLength[i]*12)+4
}


draw_set_alpha(1)

#define itemTypeArmour
draw_set_alpha(tt)

ix = x
iy = y

if iy+92+(ttLength*12) > view_hview[]+view_yview[]
{
    iy += (view_hview[]+view_yview[])-(iy+92+(ttLength*12))
}

draw_set_colour(c_dkgray)
draw_rectangle(ix+10,iy-10,ix+120,iy+90+(ttLength*12),false)
draw_set_colour(c_black)
draw_rectangle(ix+10,iy-10,ix+120,iy+90+(ttLength*12),true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = ix+15
iy = iy-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tinyText)
iy += 18
draw_text(ix,iy,string(mat1))
iy += 12
if wrongProf != 0{draw_set_colour(c_red)}
draw_text(ix,iy,string(profTypeText(itemProf[0])))
iy += 12
if wrongSize = true{draw_set_colour(c_red)}else{draw_set_colour(c_white)}
draw_text(ix,iy,'SIZE: '+string(itemSizeText(iSize)))
draw_set_colour(c_white)
iy += 12
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

iy += 12
draw_text(ix,iy,'DODGE: '+string(dodge)+' %')
iy += 12
draw_text(ix,iy,'ENC: '+string(enc)+' %')

//Tooltip
for(i = 0; i < ttLength; i++)
{
    iy += 12
    draw_set_colour(tooltipColour[i])
    draw_text_ext(ix,iy,tooltip[i],12,100)
}

//Draw the Tooltip detail boxes
ix = view_xview[]
iy = view_yview[]+view_hview[]-(ttTotalLength*12)-(ttLength*4)-1

for(i = 0; i < ttLength; i++)
{
    draw_set_colour(c_dkgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,false)
    draw_set_colour(c_ltgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,true)
    draw_set_colour(c_white)
    draw_text_ext(ix+5,iy+2,tooltipText[i],12,110)
    iy += (tooltipLength[i]*12)+4
}

draw_set_alpha(1)


#define itemTypePlating
draw_set_alpha(tt)

ix = x
iy = y

if iy+92+(ttLength*12) > view_hview[]+view_yview[]
{
    iy += (view_hview[]+view_yview[])-(iy+92+(ttLength*12))
}

draw_set_colour(c_dkgray)
draw_rectangle(ix+10,iy-10,ix+120,iy+90+(ttLength*12),false)
draw_set_colour(c_black)
draw_rectangle(ix+10,iy-10,ix+120,iy+90+(ttLength*12),true)

draw_set_colour(global.itemColour[itemQuality])
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_tooltip)

ix = ix+15
iy = iy-6

draw_text(ix+50,iy,name)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_tinyText)
iy += 18
draw_text(ix,iy,string(mat1))
iy += 12
if wrongProf != 0{draw_set_colour(c_red)}
draw_text(ix,iy,string(profTypeText(itemProf[0])))
iy += 12
if wrongSize = true{draw_set_colour(c_red)}else{draw_set_colour(c_white)}
draw_text(ix,iy,'SIZE: '+string(itemSizeText(iSize)))
draw_set_colour(c_white)
iy += 12
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

iy += 12
draw_text(ix,iy,'DODGE: '+string(dodge)+' %')
iy += 12
draw_text(ix,iy,'ENC: '+string(enc)+' %')

//Tooltip
for(i = 0; i < ttLength; i++)
{
    iy += 12
    draw_set_colour(tooltipColour[i])
    draw_text_ext(ix,iy,tooltip[i],12,100)
}

//Draw the Tooltip detail boxes
ix = view_xview[]
iy = view_yview[]+view_hview[]-(ttTotalLength*12)-(ttLength*4)-1

for(i = 0; i < ttLength; i++)
{
    draw_set_colour(c_dkgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,false)
    draw_set_colour(c_ltgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,true)
    draw_set_colour(c_white)
    draw_text_ext(ix+5,iy+2,tooltipText[i],12,110)
    iy += (tooltipLength[i]*12)+4
}

draw_set_alpha(1)

#define itemTypeTrinket
draw_set_alpha(tt)

draw_set_colour(c_dkgray)
draw_rectangle(x+10,y-10,x+120,y+60+24+(ttLength*14),false)
draw_set_colour(c_ltgray)
draw_rectangle(x+10,y-10,x+120,y+60+24+(ttLength*14),true)

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

//Tooltip
for(i = 0; i < ttLength; i++)
{
    iy += 12
    draw_set_colour(tooltipColour[i])
    draw_text_ext(ix,iy,tooltip[i],12,100)
}

//Draw the Tooltip detail boxes
ix = view_xview[]
iy = view_yview[]+view_hview[]-(ttTotalLength*12)-(ttLength*4)-1

for(i = 0; i < ttLength; i++)
{
    draw_set_colour(c_dkgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,false)
    draw_set_colour(c_ltgray)
    draw_rectangle(ix,iy,ix+120,iy+(tooltipLength[i]*12)+4,true)
    draw_set_colour(c_white)
    draw_text_ext(ix+5,iy+2,tooltipText[i],12,110)
    iy += (tooltipLength[i]*12)+4
}

draw_set_alpha(1)