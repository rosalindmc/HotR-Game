//Humanoid animation type script
//scr_humanoid(Howtouse)
//0 = Initialize a humanoid, 1 = Draw a humanoid

switch(argument0)
{
case 0:  //Initialize variables
animType = scr_humanoid
gender = 0
height = 28
raceHead = choose(spr_humanHead,spr_elfHead)
skinTone = choose(fair,dark,beige,pale)
hairStyle = choose(spr_upHair,spr_shortHair)
hairColour = black
hairVisible = true

//Animation
animStep[0] = 0
animPriority[0] = 0
animIndex[0] = anim_idle
animStep[1] = 0
animPriority[1] = 0
animIndex[1] = anim_idle
animStep[2] = 0
animPriority[2] = 0
animIndex[2] = anim_idle

alarm[5] = 5

faceImage = 0
bodyImage = 0
hipsImage = 0
chstImage = 0
legSprite = spr_leg
legSpriteMod = 0        //Set to 0 for regular legs, 1 for short legs

//Armour 
bodyItem[0] = spr_chainMail
hipsItem[0] = spr_chainMail
skrtItem[0] = spr_chainTabard
beltItem[0] = spr_belt
headItem[0] = spr_chainMail
legsItem[0] = spr_chainMail
armsItem[0] = spr_chainMail

//Weapon Sprites
weaponSprite[1] = choose(spr_axe,spr_greatSword,spr_spear)
weaponSprite[2] = spr_none

//Hands (Height = height from ground, Rot = rotation of hand, Dist = distance hand from body, Dir = direction from body)
handHeight[1] = 18
handRot[1] = 45
handDist[1] = 6
handDir[1] = -20
shldrX[1] = 0
shldrY[1] = 0
shldrOffset[1] = 3
handX[1] = 0
handY[1] = 0

handHeight[2] = 21
handRot[2] = 0
handDist[2] = 4
handDir[2] = 40
shldrX[2] = 0
shldrY[2] = 0
shldrOffset[2] = 3
handX[2] = 0
handY[2] = 0

shldrAdjust = 0
bodyVFacing = 1
bodyHFacing = 1

//Legs (Rot = rotation, Offset = distance from centre of hip, Adjust = Vertical Adjust, Cross = which leg is infront)
legX[1] = 0
legY[1] = 0
legRot[1] = 0
legOffset[1] = 2
legAdjust[1] = 0
legAnim[1] = 0

legX[2] = 0
legY[2] = 0
legRot[2] = 0
legOffset[2] = 3
legAdjust[2] = 0
legAnim[2] = 2

skrtAnim = 0    //How Flayed out is char skirt

//Hips (Rot = rotation, Offset = vertical distance from ground, Thrust = horizontal distance from centre)
hipsX = 0
hipsY = 0
hipsRot = 0
hipsBounce = 0
hipsOffset = 12
hipsThrust = 0

//Body (Rot = rotation, Offset = distance from hip, Adjust = horizontal adjust)
bodyX = 0
bodyY = 0
bodyRot = 0
bodyOffset = 5
bodyAdjust = 0
bodyTwist = 0 

//Chest
chstX = 0
chstY = 0
chstAdjust = 0

//Head (Rot = rotation, Offset = distance from hip, Adjust = horizontal adjust)
headX = 0
headY = 0
headRot = 0
headOffset = 6
headAdjust = 1
headThrust = 0

//Animations
bounce = 0
legAnimIndex = 0
legAnimFrame = 0
legCross = 0
legAngleX = 1 //Multiplier of leg movement

//Randomizer
scr_humanoidRandomize()
scr_tempArmourRandomize()
break

case 1: //Draw self

//Body Facing and Direction
scr_twist(bodyTwist)

hipsX = round(x)+(hipsThrust*hFacing)
hipsY = round(y)-hipsOffset-hipsBounce-h-((isoZ-global.zLevel)*30)

legX[1] = round(hipsX+lengthdir_x(legOffset[1]*hFacing, hipsRot)+lengthdir_x(legAdjust[1], hipsRot-90))
legY[1] = round(hipsY+lengthdir_y(legOffset[1]*hFacing, hipsRot)+lengthdir_y(legAdjust[1], hipsRot-90))

legX[2] = round(hipsX+lengthdir_x(legOffset[2]*hFacing, hipsRot-180)+lengthdir_x(legAdjust[2], hipsRot-90))
legY[2] = round(hipsY+lengthdir_y(legOffset[2]*hFacing, hipsRot-180)+lengthdir_y(legAdjust[2], hipsRot-90))

bodyX = round(hipsX+lengthdir_x(bodyOffset, hipsRot+90)+lengthdir_x(bodyAdjust*hFacing, hipsRot))
bodyY = round(hipsY+lengthdir_y(bodyOffset, hipsRot+90)+lengthdir_y(bodyAdjust*hFacing, hipsRot))

chstX = round(bodyX+lengthdir_x(bounce, bodyRot+90)+lengthdir_x(chstAdjust*bodyHFacing, bodyRot))
chstY = round(bodyY+lengthdir_y(bounce, bodyRot+90)+lengthdir_y(chstAdjust*bodyHFacing, bodyRot))

headX = round(bodyX+lengthdir_x(headOffset, bodyRot+90)+lengthdir_x((headAdjust+headThrust)*hFacing, bodyRot))
headY = round(bodyY+lengthdir_y(headOffset, bodyRot+90)+lengthdir_y((headAdjust+headThrust)*hFacing, bodyRot))

shldrX[1] = round(bodyX+lengthdir_x(shldrOffset[1]*bodyHFacing, bodyRot)+lengthdir_x(shldrAdjust, bodyRot+90))
shldrY[1] = round(bodyY+lengthdir_y(shldrOffset[1]*bodyHFacing, bodyRot)+lengthdir_y(shldrAdjust, bodyRot+90))

shldrX[2] = round(bodyX+lengthdir_x(shldrOffset[2]*bodyHFacing, bodyRot-180)+lengthdir_x(shldrAdjust, bodyRot+90))
shldrY[2] = round(bodyY+lengthdir_y(shldrOffset[2]*bodyHFacing, bodyRot-180)+lengthdir_y(shldrAdjust, bodyRot+90))

handX[1] = round(x+lengthdir_x(handDist[1], facing+(bodyHFacing*handDir[1])))
handY[1] = round(y+lengthdir_y(handDist[1], facing+(bodyHFacing*handDir[1]))-handHeight[1]-h)-((isoZ-global.zLevel)*30)

handX[2] = round(x+lengthdir_x(handDist[2], facing+(bodyHFacing*handDir[2])))
handY[2] = round(y+lengthdir_y(handDist[2], facing+(bodyHFacing*handDir[2]))-handHeight[2]-h)-((isoZ-global.zLevel)*30)

//Correct Shoulder Rotation
shldrSwap = 0
if bodyVFacing = 0
{
    shldrSwap = 1
}

//Temp
handX[2] = round(handX[1]+lengthdir_x(2, facing+(hFacing*handRot[1])))
handY[2] = round(handY[1]+lengthdir_y(2, facing+(hFacing*handRot[1])))

//Arm Directions
handPoint[1] = point_direction(shldrX[1+shldrSwap],shldrY[1+shldrSwap],handX[1],handY[1])
handPoint[2] = point_direction(shldrX[2-shldrSwap],shldrY[2-shldrSwap],handX[2],handY[2])
armLength[1] = min(floor(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6)
armStretch[1] = max(floor(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),8)/8
armLength[2] = min(floor(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),6)
armStretch[2] = max(floor(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),8)/8

if bodyHFacing*handPoint[1] < -90
{armHFacing[1] = bodyHFacing*-1} 
else
{armHFacing[1] = bodyHFacing}

if bodyHFacing*handPoint[2] < -90
{armHFacing[2] = bodyHFacing*-1} 
else
{armHFacing[2] = bodyHFacing}

       
        //
        //Char Draw
        //
        
//Arms Behind Body
if bodyVFacing = 1 and handY[1] < handY[2]
{
    //Draw Hand1
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(array_length_1d(armsItem)-1){i++ draw_sprite_ext(armsItem[i],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],1,bodyHFacing,facing+(bodyHFacing*handRot[1]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing,1,handRot[1]+facing,skinTone,1)
}
if abs(angle_difference(270,facing+(hFacing*handDir[2]))) > 90
{
    //Draw Hand2
    draw_sprite_ext(spr_arms,(7*max(armHFacing[2],0))+min(round(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),6),shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*armHFacing[2],armStretch[2],handPoint[2]+90,skinTone,1)
    i = 0 repeat(array_length_1d(armsItem)-1){i++ draw_sprite_ext(armsItem[i],(20*max(armHFacing[2],0))+32+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*armHFacing[2],armStretch[2],handPoint[2]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[2],0,handX[2],handY[2],1,bodyHFacing,facing+(bodyHFacing*handRot[2]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[2],handY[2],bodyHFacing,1,handRot[2]+facing,skinTone,1)
}
if bodyVFacing = 1 and handY[1] >= handY[2]
{
    //Draw Hand1
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(array_length_1d(armsItem)-1){i++ draw_sprite_ext(armsItem[i],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],1,bodyHFacing,facing+(bodyHFacing*handRot[1]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing,1,handRot[1]+facing,skinTone,1)
}

//Skirt Back
i = 0 repeat(array_length_1d(skrtItem)-1){i++ draw_sprite_ext(skrtItem[i],skrtAnim+(legSpriteMod*6)+1-vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}

//Foreleg
draw_sprite_ext(legSprite,legAnim[1]+vFacing,legX[1],legY[1],hFacing,1,legRot[1],skinTone,1)
i = 0 repeat(array_length_1d(legsItem)-1){i++ draw_sprite_ext(legsItem[i],20+vFacing+(legSpriteMod*20)+legAnim[1],legX[1],legY[1],hFacing,1,legRot[1],c_white,1)}

//Rear Leg
draw_sprite_ext(legSprite,legAnim[2]+vFacing,legX[2],legY[2],hFacing,1,legRot[2],skinTone,1)
i = 0 repeat(array_length_1d(legsItem)-1){i++ draw_sprite_ext(legsItem[i],20+vFacing+(legSpriteMod*20)+legAnim[2],legX[2],legY[2],hFacing,1,legRot[2],c_white,1)}

//Hips
draw_sprite_ext(spr_hips,hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,skinTone,1)
draw_sprite_ext(spr_downHair,hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,hairColour,1)
i = 0 repeat(array_length_1d(hipsItem)-1){i++ draw_sprite_ext(hipsItem[i],12+hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}

//Skirt
i = 0 repeat(array_length_1d(skrtItem)-1){i++ draw_sprite_ext(skrtItem[i],skrtAnim+(legSpriteMod*6)+vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}

//Belt
i = 0 repeat(array_length_1d(beltItem)-1){i++ draw_sprite_ext(beltItem[i],hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}

if vFacing = 0
{
    //Hair (Back)
    draw_sprite_ext(hairStyle,4+bounce,headX,headY,hFacing,1,headRot+(hipsRot*2),hairColour,hairVisible)
}

if bodyVFacing = 0
{    
    //Upper Body
    draw_sprite_ext(spr_body,bodyImage+vFacing,bodyX,bodyY,bodyHFacing,1,bodyRot,skinTone,1)
    i = 0 repeat(array_length_1d(bodyItem)-1){i++ draw_sprite_ext(bodyItem[i],2+bodyImage+bodyVFacing,bodyX,bodyY,bodyHFacing,1,bodyRot,c_white,1)}

    //Chest
    draw_sprite_ext(spr_chest,chstImage,chstX,chstY,bodyHFacing,1,bodyRot,skinTone,1)
    i = 0 repeat(array_length_1d(bodyItem)-1){i++ draw_sprite_ext(bodyItem[i],8+chstImage,chstX,chstY,bodyHFacing,1,bodyRot,c_white,1)}
}

//Head and Hair
draw_sprite_ext(raceHead,faceImage+vFacing,headX,headY,hFacing,1,headRot,skinTone,1)
draw_sprite_ext(hairStyle,bounce+(vFacing*2),headX,headY,hFacing,1,headRot,hairColour,hairVisible)
i = 0 repeat(array_length_1d(headItem)-1){i++ draw_sprite_ext(headItem[i],faceImage+vFacing,headX,headY,hFacing,1,headRot,c_white,1)}

if bodyVFacing = 1
{
    //Chest
    draw_sprite_ext(spr_chest,chstImage,chstX,chstY,bodyHFacing,1,bodyRot,skinTone,1)
    i = 0 repeat(array_length_1d(bodyItem)-1){i++ draw_sprite_ext(bodyItem[i],8+chstImage,chstX,chstY,bodyHFacing,1,bodyRot,c_white,1)}
    
    //Upper Body
    draw_sprite_ext(spr_body,bodyImage+vFacing,bodyX,bodyY,bodyHFacing,1,bodyRot,skinTone,1)
    i = 0 repeat(array_length_1d(bodyItem)-1){i++ draw_sprite_ext(bodyItem[i],2+bodyImage+bodyVFacing,bodyX,bodyY,bodyHFacing,1,bodyRot,c_white,1)}
}

if vFacing = 1
{
    //Hair (Back)
    draw_sprite_ext(hairStyle,4+bounce,headX,headY,hFacing,1,headRot+(hipsRot*2),hairColour,hairVisible)
}

//Arms Infront of Body
if bodyVFacing = 0 and handY[1] < handY[2]
{
    //Draw Hand1
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(array_length_1d(armsItem)-1){i++ draw_sprite_ext(armsItem[i],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],1,bodyHFacing,facing+(bodyHFacing*handRot[1]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing,1,handRot[1]+facing,skinTone,1)
}
if abs(angle_difference(270,facing+(hFacing*handDir[2]))) <= 90
{
    //Draw Hand2
    draw_sprite_ext(spr_arms,(7*max(armHFacing[2],0))+min(round(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),6),shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*armHFacing[2],armStretch[2],handPoint[2]+90,skinTone,1)
    i = 0 repeat(array_length_1d(armsItem)-1){i++ draw_sprite_ext(armsItem[i],(20*max(armHFacing[2],0))+32+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*armHFacing[2],armStretch[2],handPoint[2]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[2],0,handX[2],handY[2],1,bodyHFacing,facing+(bodyHFacing*handRot[2]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[2],handY[2],bodyHFacing,1,handRot[2]+facing,skinTone,1)
}
if bodyVFacing = 0 and handY[1] >= handY[2]
{
    //Draw Hand1
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(array_length_1d(armsItem)-1){i++ draw_sprite_ext(armsItem[i],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],1,bodyHFacing,facing+(bodyHFacing*handRot[1]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing,1,handRot[1]+facing,skinTone,1)
}

break
}
