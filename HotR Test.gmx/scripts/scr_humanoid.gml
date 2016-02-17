//Humanoid animation type script
//scr_humanoid(Howtouse)
//0 = Initialize a humanoid, 1 = Draw a humanoid

var a0 = argument0

switch(a0)
{
case 0:  //Initialize variables
animType = scr_humanoid
gender = choose(sex_female,sex_male)
raceHead = spr_humanhead
skinTone = skin_fair
hairStyle = spr_hair1
hairColour = hair_darkred

//Legs (Rot = rotation, Offset = distance from centre of hip, Cross = which leg is infront)
legX[1] = 0
legY[1] = 0
legRot[1] = 0
legOffset[1] = 2
legX[2] = 0
legY[2] = 0
legRot[2] = 0
legOffset[2] = 3

//Leg Animation (Index = running animation, Frame = frame of the animation)
legAnimIndex = 0
legAnimFrame = 0
legCross = 0

//Hips (Rot = rotation, Offset = vertical distance from ground, Thrust = horizontal distance from centre)
hipsX = 0
hipsY = 0
hipsRot = 0
hipsOffset = 14
hipsThrust = 0

//Body (Rot = rotation, Offset = distance from hip)
bodyX = 0
bodyY = 0
bodyRot = 0
bodyOffset = 5

//Head (Rot = rotation, Offset = distance from hip)
headX = 0
headY = 0
headRot = 0
headOffset = 0

//Animations
bounce = 0

break

case 1:  //Draw self
//Temp
draw_sprite_ext(spr_char,vFacing,x,y,hFacing,1,0,c_white,1)

/*
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

*/
}
