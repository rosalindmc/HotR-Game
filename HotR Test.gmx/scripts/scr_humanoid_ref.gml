switch(argument0)
{
case 0:  //Initialize Variables
sex = choose(sex_female,sex_male)
skin_tone = skin_fair
hair_style = spr_hair1
hair_colour = hair_dkred
hand_colour = skin_tone
hair_visible = 1

//Legs
leg_anim[1] = 1
leg_x[1] = 0
leg_y[1] = 0
leg_rot[1] = 0
leg_offset[1] = 2

leg_anim[2] = 0
leg_x[2] = 0
leg_y[2] = 0
leg_rot[2] = 0
leg_offset[2] = 3

legcross = 0        //Variable for which leg in move anim
leganglex = .5       //Multiplier onleg rotation (lower for walking)

//Hips
hips_x = 0
hips_y = 0
hips_rot = 0
hips_offset = 14
hips_thrust = 0

//Chest
chst_x = 0
chst_y = 0
chst_rot = 0
chst_offset = 5

//Head
head_x = 0
head_y = 0
head_rot = 0
head_offset = 6

animation[1] = 5

alarm[2] = 5

//Temp Equip
head_item = spr_none
chst_item = spr_alloychest
body_item = spr_alloybod
hips_item = spr_alloyhips
legs_item = spr_alloyleg
armour_tone = c_white

break

case 1:  //Draw
if facingv = 1
{
    facingv = 2
}
else
{
    facingv = 0
}

hips_x = round(x)+(hips_thrust*facingh)
hips_y = round(y)-hips_offset

leg_x[1] = hips_x+(facingh*lengthdir_x(leg_offset[1], hips_rot))
leg_y[1] = hips_y+lengthdir_y(leg_offset[1], hips_rot)

leg_x[2] = hips_x+(facingh*lengthdir_x(leg_offset[2], hips_rot-180))
leg_y[2] = hips_y+lengthdir_y(leg_offset[2], hips_rot-180)

body_x = hips_x+lengthdir_x(chst_offset, hips_rot+90)
body_y = hips_y+lengthdir_y(chst_offset, hips_rot+90)

chst_x = body_x+lengthdir_x(bounce, chst_rot+90)
chst_y = body_y+lengthdir_y(bounce, chst_rot+90)

head_x = body_x+lengthdir_x(head_offset, chst_rot+90)
head_y = body_y+lengthdir_y(head_offset, chst_rot+90)

//Char Draw
draw_sprite_ext(spr_leg,leg_anim[1],leg_x[1],leg_y[1],facingh,1,leg_rot[1],skin_tone,1)
draw_sprite_ext(legs_item,leg_anim[1],leg_x[1],leg_y[1],facingh,1,leg_rot[1],armour_tone,1)

if facingv = 2
{
    draw_sprite_ext(spr_leg,leg_anim[2],leg_x[2],leg_y[2],facingh,1,leg_rot[2],skin_tone,1)
    draw_sprite_ext(legs_item,leg_anim[2],leg_x[2],leg_y[2],facingh,1,leg_rot[2],armour_tone,1)
}

draw_sprite_ext(spr_hips,sex+facingv,hips_x,hips_y,facingh,1,hips_rot,skin_tone,1)
draw_sprite_ext(spr_downhair,sex+facingv,hips_x,hips_y,facingh,1,hips_rot,hair_colour,1)
draw_sprite_ext(hips_item,sex+facingv,hips_x,hips_y,facingh,1,hips_rot,armour_tone,1)

if facingv = 0
{
    draw_sprite_ext(spr_leg,leg_anim[2],leg_x[2],leg_y[2],facingh,1,leg_rot[2],skin_tone,1)
    draw_sprite_ext(legs_item,leg_anim[2],leg_x[2],leg_y[2],facingh,1,leg_rot[2],armour_tone,1)
    draw_sprite_ext(hair_style,1,head_x,head_y,facingh,1,head_rot+(hips_rot*2),hair_colour,hair_visible)
    draw_sprite_ext(spr_body,sex+facingv,body_x,body_y,facingh,1,chst_rot,skin_tone,1)
    draw_sprite_ext(body_item,sex+facingv,body_x,body_y,facingh,1,chst_rot,armour_tone,1)
    draw_sprite_ext(spr_chest,sex+facingv,chst_x,chst_y,facingh,1,chst_rot,skin_tone,1)
    draw_sprite_ext(chst_item,sex+facingv,chst_x,chst_y,facingh,1,chst_rot,armour_tone,1)
}

draw_sprite_ext(spr_head,sex+facingv,head_x,head_y,facingh,1,head_rot,skin_tone,1)
draw_sprite_ext(hair_style,facingv,head_x,head_y,facingh,1,head_rot,hair_colour,hair_visible)
draw_sprite_ext(head_item,sex+facingv,head_x,head_y,facingh,1,head_rot,armour_tone,1)

if facingv = 2
{
    draw_sprite_ext(spr_body,sex+facingv,body_x,body_y,facingh,1,chst_rot,skin_tone,1)
    draw_sprite_ext(body_item,sex+facingv,body_x,body_y,facingh,1,chst_rot,armour_tone,1)
    draw_sprite_ext(spr_chest,sex+facingv,chst_x,chst_y,facingh,1,chst_rot,skin_tone,1)
    draw_sprite_ext(chst_item,sex+facingv,chst_x,chst_y,facingh,1,chst_rot,armour_tone,1)
    draw_sprite_ext(hair_style,1,head_x,head_y,facingh,1,head_rot+(hips_rot*2),hair_colour,hair_visible)
}

break
}
