//Humanoid animation type script
//scr_humanoid(Howtouse)
//0 = Initialize a humanoid, 1 = Draw a humanoid

var a0 = argument0

switch(a0)
{
case 0:  //Initialize variables
animType = scr_humanoid
gender = choose(gndr_female,gndr_male)
raceHead = spr_humanhead
skinTone = skin_fair
hairStyle = spr_hair1
hairColour = hair_darkred
hairVisible = true

//Legs (Rot = rotation, Offset = distance from centre of hip, Cross = which leg is infront)
legX[1] = 0
legY[1] = 0
legRot[1] = 0
legOffset[1] = 2
legAnim[1] = 0


legX[2] = 0
legY[2] = 0
legRot[2] = 0
legOffset[2] = 3
legAnim[2] = 0

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

//Chest
chstX = 0
chstY = 0


//Head (Rot = rotation, Offset = distance from hip)
headX = 0
headY = 0
headRot = 0
headOffset = 6

//Animations
bounce = 0
legAnimIndex = 0
legAnimFrame = 0
legCross = 0

break

case 1:  //Draw self

//Temp
if vFacing = 1
{
vFacing = 2
}

hipsX = round(x)+(hipsThrust*hFacing)
hipsY = round(y)-hipsOffset

legX[1] = hipsX+(hFacing*lengthdir_x(legOffset[1], hipsRot))
legY[1] = hipsY+lengthdir_y(legOffset[1], hipsRot)

legX[2] = hipsX+(hFacing*lengthdir_x(legOffset[2], hipsRot-180))
legY[2] = hipsY+lengthdir_y(legOffset[2], hipsRot-180)

bodyX = hipsX+lengthdir_x(bodyOffset, hipsRot+90)
bodyY = hipsY+lengthdir_y(bodyOffset, hipsRot+90)

chstX = bodyX+lengthdir_x(bounce, bodyRot+90)
chstY = bodyY+lengthdir_y(bounce, bodyRot+90)

headX = bodyX+lengthdir_x(headOffset, bodyRot+90)
headY = bodyY+lengthdir_y(headOffset, bodyRot+90)

//Char Draw

draw_sprite_ext(spr_leg,legAnim[1],legX[1],legY[1],hFacing,1,legRot[1],skinTone,1)
//draw_sprite_ext(legs_item,legAnimFrame[1],legX[1],legY[1],hFacing,1,legRot[1],armour_tone,1)

if vFacing = 2
{
    draw_sprite_ext(spr_leg,legAnim[2],legX[2],legY[2],hFacing,1,legRot[2],skinTone,1)
//    draw_sprite_ext(legs_item,legAnim[2],legX[2],legY[2],hFacing,1,legRot[2],armour_tone,1)
}

draw_sprite_ext(spr_hips,gender+vFacing,hipsX,hipsY,hFacing,1,hipsRot,skinTone,1)
//draw_sprite_ext(spr_downhair,gender+vFacing,hipsX,hipsY,hFacing,1,hipsRot,hairColour,1)
//draw_sprite_ext(hips_item,gender+vFacing,hipsX,hipsY,hFacing,1,hipsRot,armour_tone,1)

if vFacing = 0
{
    draw_sprite_ext(spr_leg,legAnim[2],legX[2],legY[2],hFacing,1,legRot[2],skinTone,1)
//    draw_sprite_ext(legs_item,legAnim[2],legX[2],legY[2],hFacing,1,legRot[2],armour_tone,1)
    draw_sprite_ext(hairStyle,1,headX,headY,hFacing,1,headRot+(hipsRot*2),hairColour,hairVisible)
    draw_sprite_ext(spr_body,gender+vFacing,bodyX,bodyY,hFacing,1,bodyRot,skinTone,1)
//    draw_sprite_ext(body_item,gender+vFacing,bodyX,bodyY,hFacing,1,bodyRot,armour_tone,1)
    draw_sprite_ext(spr_chest,gender+vFacing,chstX,chstY,hFacing,1,bodyRot,skinTone,1)
//    draw_sprite_ext(chst_item,gender+vFacing,chstX,chstY,hFacing,1,bodyRot,armour_tone,1)
}

draw_sprite_ext(raceHead,gender+vFacing,headX,headY,hFacing,1,headRot,skinTone,1)
draw_sprite_ext(hairStyle,vFacing,headX,headY,hFacing,1,headRot,hairColour,hairVisible)
//draw_sprite_ext(head_item,gender+vFacing,headX,headY,hFacing,1,headRot,armour_tone,1)

if vFacing = 2
{
    draw_sprite_ext(spr_body,gender+vFacing,bodyX,bodyY,hFacing,1,bodyRot,skinTone,1)
//    draw_sprite_ext(body_item,gender+vFacing,bodyX,bodyY,hFacing,1,bodyRot,armour_tone,1)
    draw_sprite_ext(spr_chest,gender+vFacing,chstX,chstY,hFacing,1,bodyRot,skinTone,1)
//    draw_sprite_ext(chst_item,gender+vFacing,chstX,chstY,hFacing,1,bodyRot,armour_tone,1)
    draw_sprite_ext(hairStyle,1,headX,headY,hFacing,1,headRot+(hipsRot*2),hairColour,hairVisible)
}

break

}
