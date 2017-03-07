#define humanoid
//Humanoid master script
//humanoid(Howtouse)
//0 = Initialize a humanoid, 1 = Draw a humanoid

switch(argument0)
{
case 0:  //Initialize variables
initializeHumanoid()
break

case 1: //Draw self
drawHumanoid()
break
}

#define initializeHumanoid
//Initialize a humanoid

animType = humanoid
gender = 0
height = 28
headSprite = spr_baseHead
earSprite = spr_none
skinTone = fair
eyeColour = choose(eyeBlue,eyeGreen,c_dkgray,eyeViolet,c_olive,eyeBrown)
hairStyle = spr_shortHair
beardStyle = spr_none
hairColour = black
hairVisible = true

//Animation
animStep[0] = 0
animPriority[0] = 0
animIndex[0] = animIdle
animStep[1] = 0
animPriority[1] = 0
animIndex[1] = animMeleeHold
animStep[2] = 0
animPriority[2] = 0
animIndex[2] = animMeleeHold

alarm[5] = 1
alarm[6] = 1
alarm[7] = 1

faceImage = 0
bodyImage = 0
hipsImage = 0
chstImage = 0
legSprite = spr_leg
legSpriteMod = 0        //Set to 0 for regular legs, 1 for short legs

//Armour 
bodyItem[0] = spr_none
bodyColour[0] = c_white
bodyItems = 0
chstItem[0] = spr_none
chstColour[0] = c_white
chstItems = 0
hipsItem[0] = spr_none
hipsColour[0] = c_white
hipsItems = 0
skrtItem[0] = spr_none
skrtColour[0] = c_white
skrtItems = 0
beltItem[0] = spr_none
beltColour[0] = c_white
beltItems = 0
headItem[0] = spr_none
headColour[0] = c_white
headItems = 0
legsItem[0,1] = spr_none
legsColour[0,1] = c_white
legsItems[1] = 0
legsItem[0,2] = spr_none
legsColour[0,2] = c_white
legsItems[2] = 0
armsItem[0,1] = spr_none
armsColour[0,1] = c_white
armsItems[1] = 0
armsItem[0,2] = spr_none
armsColour[0,2] = c_white
armsItems[2] = 0
underHipsNum = 0

//Hands (Height = height from ground, Rot = rotation of hand, Dist = distance hand from body, Dir = direction from body)
handHeight[1] = 4
handRot[1] = 45
handDist[1] = 6
handDir[1] = -20
shldrX[1] = 0
shldrY[1] = 0
shldrOffset[1] = 3
handX[1] = 0
handY[1] = 0
handFront[1] = false

handHeight[2] = 4
handRot[2] = 0
handDist[2] = 4
handDir[2] = 40
shldrX[2] = 0
shldrY[2] = 0
shldrOffset[2] = 3
handX[2] = 0
handY[2] = 0
handFront[2] = false

shldrAdjust = 0
bodyVFacing = 1
bodyHFacing = 1
greatWeaponSize = 2

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
hipsAdjust = 0
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
headFacing = 1

//Animations
bounce = 0
legAnimIndex = 0
legAnimFrame = 0
legCross = 0
legAngleX = 1 //Multiplier of leg movement

#define drawHumanoid
//Draw a humanoid

//Shader
shader_set(global.shader)

    //Adjust Bones
    
//Body Facing and Direction
twist(bodyTwist)

hipsX = round(x)+(hipsThrust*sX*hFacing)
hipsY = round(y)-((hipsOffset+hipsAdjust+hipsBounce)*sX)-h+(global.zLevel*15)

legX[1] = round(hipsX+lengthdir_x(legOffset[1]*hFacing*sX, hipsRot)+lengthdir_x(legAdjust[1]*sX, hipsRot-90)+lengthdir_x(hipsBounce*sX, hipsRot-90))
legY[1] = round(hipsY+lengthdir_y(legOffset[1]*hFacing*sX, hipsRot)+lengthdir_y(legAdjust[1]*sX, hipsRot-90)+lengthdir_y(hipsBounce*sX, hipsRot-90))

legX[2] = round(hipsX+lengthdir_x(legOffset[2]*hFacing*sX, hipsRot-180)+lengthdir_x(legAdjust[2]*sX, hipsRot-90)+lengthdir_x(hipsBounce*sX, hipsRot-90))
legY[2] = round(hipsY+lengthdir_y(legOffset[2]*hFacing*sX, hipsRot-180)+lengthdir_y(legAdjust[2]*sX, hipsRot-90)+lengthdir_y(hipsBounce*sX, hipsRot-90))

bodyX = round(hipsX+lengthdir_x(bodyOffset*sX, hipsRot+90)+lengthdir_x(bodyAdjust*hFacing*sX, hipsRot))
bodyY = round(hipsY+lengthdir_y(bodyOffset*sX, hipsRot+90)+lengthdir_y(bodyAdjust*hFacing*sX, hipsRot))

chstX = round(bodyX+lengthdir_x(max(bounce-rigid,0)*sX, bodyRot+90)+lengthdir_x(chstAdjust*bodyHFacing*sX, bodyRot))
chstY = round(bodyY+lengthdir_y(max(bounce-rigid,0)*sX, bodyRot+90)+lengthdir_y(chstAdjust*bodyHFacing*sX, bodyRot))

headX = round(bodyX+lengthdir_x(headOffset*sX, bodyRot+90)+lengthdir_x((headAdjust+headThrust)*hFacing*sX, bodyRot))
headY = round(bodyY+lengthdir_y(headOffset*sX, bodyRot+90)+lengthdir_y((headAdjust+headThrust)*hFacing*sX, bodyRot))

shldrX[1] = round(bodyX+lengthdir_x(shldrOffset[1]*bodyHFacing*sX, bodyRot)+lengthdir_x(shldrAdjust, bodyRot+90))
shldrY[1] = round(bodyY+lengthdir_y(shldrOffset[1]*bodyHFacing*sX, bodyRot)+lengthdir_y(shldrAdjust, bodyRot+90))

shldrX[2] = round(bodyX+lengthdir_x(shldrOffset[2]*bodyHFacing*sX, bodyRot-180)+lengthdir_x(shldrAdjust, bodyRot+90))
shldrY[2] = round(bodyY+lengthdir_y(shldrOffset[2]*bodyHFacing*sX, bodyRot-180)+lengthdir_y(shldrAdjust, bodyRot+90))

handX[1] = round(hipsX+lengthdir_x(handDist[1]*sX, handDir[1]))
handY[1] = round(hipsY+lengthdir_y(handDist[1]*sX, handDir[1]))-(handHeight[1]*sX)

handX[2] = round(hipsX+lengthdir_x(handDist[2]*sX, handDir[2]))
handY[2] = round(hipsY+lengthdir_y(handDist[2]*sX, handDir[2]))-(handHeight[2]*sX)

//If using a great weapon, move second hand
if greatWeapon = true
{
    handX[2] = round(handX[1]+lengthdir_x(greatWeaponSize*sX, (handRot[1])))
    handY[2] = round(handY[1]+lengthdir_y(greatWeaponSize*sX, (handRot[1])))
    
    handX[1] = round(handX[1]+lengthdir_x(greatWeaponSize*-sX, (handRot[1])))
    handY[1] = round(handY[1]+lengthdir_y(greatWeaponSize*-sX, (handRot[1])))
}

//Arm Directions
handPoint[1] = point_direction(shldrX[1+shldrSwap],shldrY[1+shldrSwap],handX[1],handY[1])
handPoint[2] = point_direction(shldrX[2-shldrSwap],shldrY[2-shldrSwap],handX[2],handY[2])
armLength[1] = min(floor(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6)
armStretch[1] = max(floor(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),8)/8
armLength[2] = min(floor(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),6)
armStretch[2] = max(floor(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),8)/8

if greatWeapon = true
{
    if bodyVFacing = 0
    {handFront[1] = true handFront[2] = true}
    else
    {handFront[1] = false handFront[2] = false}
}
else
{
    if abs(angle_difference(270,handDir[1])) <= 90
    {handFront[1] = true}
    else
    {handFront[1] = false}
    
    if abs(angle_difference(270,handDir[2])) <= 90
    {handFront[2] = true}
    else
    {handFront[2] = false}
}

if bodyHFacing*handPoint[1] < -90
{armHFacing[1] = bodyHFacing*-1} 
else
{armHFacing[1] = bodyHFacing}

if bodyHFacing*handPoint[2] < -90
{armHFacing[2] = bodyHFacing*-1} 
else
{armHFacing[2] = bodyHFacing}
       
        //Char Draw
                
//Arms Behind Body
if handFront[1] = false and handY[1]+(handHeight[1]*sX) < handY[2]+(handHeight[2]*sX)
{
    //Draw Hand1
    if hasShield = true
    {draw_sprite_ext(weaponSprite[1],1,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],c_white,1)}
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    if hasShield = false
    {draw_sprite_ext(weaponSprite[1],1,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],c_white,1)}
    draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1]+facing,skinTone,1)
}
if handFront[2] = false
{
    //Draw Hand2
    if hasShield = true
    {draw_sprite_ext(weaponSprite[2],1,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],c_white,1)}
    draw_sprite_ext(spr_arms,(7*max(armHFacing[2],0))+min(round(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),6),shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,skinTone,1)
    i = 0 repeat(armsItems[2-vFacing]){i++ draw_sprite_ext(armsItem[i,2-vFacing],20-(20*max(armHFacing[1],0))+32+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,armsColour[i,2-vFacing],1)}
    if hasShield = false
    {draw_sprite_ext(weaponSprite[2],1,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],c_white,1)}
    draw_sprite_ext(spr_hand,0,handX[2],handY[2],bodyHFacing*sX,sX,handRot[2]+facing,skinTone,1)
}
if handFront[1] = false and handY[1]+(handHeight[1]*sX) >= handY[2]+(handHeight[2]*sX)
{
    //Draw Hand1
    if hasShield = true
    {draw_sprite_ext(weaponSprite[1],1,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],c_white,1)}
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    if hasShield = false
    {draw_sprite_ext(weaponSprite[1],1,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],c_white,1)}
    draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1]+facing,skinTone,1)
}

//Skirt Back
i = 0 repeat(skrtItems){i++ draw_sprite_ext(skrtItem[i],skrtAnim+(6*floor(hipsImage/6))+(1-vFacing),hipsX,hipsY,hFacing*sX,sX,hipsRot,skrtColour[i],1)}

//Foreleg
draw_sprite_ext(legSprite,legAnim[1]+vFacing,legX[1],legY[1],hFacing*sX,sX,legRot[1],skinTone,1)
i = 0 repeat(legsItems[1+vFacing]){i++ draw_sprite_ext(legsItem[i,1+vFacing],20+vFacing+(legSpriteMod*20)+legAnim[1],legX[1],legY[1],hFacing*sX,sX,legRot[1],legsColour[i,1+vFacing],1)}

//Rear Leg
draw_sprite_ext(legSprite,legAnim[2]+vFacing,legX[2],legY[2],hFacing*sX,sX,legRot[2],skinTone,1)
i = 0 repeat(legsItems[2-vFacing]){i++ draw_sprite_ext(legsItem[i,2-vFacing],20+vFacing+(legSpriteMod*20)+legAnim[2],legX[2],legY[2],hFacing*sX,sX,legRot[2],legsColour[i,2-vFacing],1)}

//Hips
draw_sprite_ext(spr_hips,hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,skinTone,1)
draw_sprite_ext(spr_downHair,hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,hairColour,1)
i = 0 repeat(underHipsNum){i++ draw_sprite_ext(hipsItem[i],12+hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,hipsColour[i],1)}

//Skirt
i = 0 repeat(skrtItems){i++ draw_sprite_ext(skrtItem[i],skrtAnim+(6*floor(hipsImage/6))+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,skrtColour[i],1)}

//Belt
i = 0 repeat(beltItems){i++ draw_sprite_ext(beltItem[i],hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,beltColour[i],1)}

//More Hip Items
i = underHipsNum repeat(hipsItems-underHipsNum){i++ draw_sprite_ext(hipsItem[i],12+hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,hipsColour[i],1)}

if vFacing = 0
{
    //Hair (Back)
    draw_sprite_ext(hairStyle,4+bounce,headX,headY,hFacing*sX,sX,headRot+(hipsRot*2),hairColour,hairVisible)
}

if bodyVFacing = 0
{        
    //Upper Body
    draw_sprite_ext(spr_body,bodyImage+vFacing,bodyX,bodyY,bodyHFacing*sX,sX,bodyRot,skinTone,1)
    i = 0 repeat(bodyItems){i++ draw_sprite_ext(bodyItem[i],2+bodyImage+bodyVFacing,bodyX,bodyY,bodyHFacing*sX,sX,bodyRot,bodyColour[i],1)}

    //Chest
    draw_sprite_ext(spr_chest,chstImage,chstX,chstY,bodyHFacing*sX,sX,bodyRot,skinTone,1)
    i = 0 repeat(chstItems){i++ draw_sprite_ext(chstItem[i],8+chstImage,chstX,chstY,bodyHFacing*sX,sX,bodyRot,chstColour[i],1)}
}

//Head and Hair
if bodyVFacing = 1{draw_sprite_ext(beardStyle,bounce,headX,headY,headFacing*hFacing*sX,sX,headRot,hairColour,1)}
draw_sprite_ext(headSprite,faceImage+vFacing,headX,headY,headFacing*hFacing*sX,sX,headRot,skinTone,1)
draw_sprite_ext(spr_eyes,faceImage+vFacing,headX,headY,headFacing*hFacing*sX,sX,headRot,eyeColour,1)
draw_sprite_ext(hairStyle,bounce+(vFacing*2),headX,headY,headFacing*hFacing*sX,sX,headRot,hairColour,hairVisible)
draw_sprite_ext(earSprite,vFacing,headX,headY,headFacing*hFacing*sX,sX,headRot,skinTone,1)
if bodyVFacing = 0{draw_sprite_ext(beardStyle,bounce,headX,headY,headFacing*hFacing*sX,sX,headRot,hairColour,1)}
i = 0 repeat(headItems){i++ draw_sprite_ext(headItem[i],vFacing,headX,headY,headFacing*hFacing*sX,sX,headRot,headColour[i],1)}

if bodyVFacing = 1
{
    //Chest
    draw_sprite_ext(spr_chest,chstImage,chstX,chstY,bodyHFacing*sX,sX,bodyRot,skinTone,1)
    i = 0 repeat(chstItems){i++ draw_sprite_ext(chstItem[i],8+chstImage,chstX,chstY,bodyHFacing*sX,sX,bodyRot,chstColour[i],1)}
    
    //Upper Body
    draw_sprite_ext(spr_body,bodyImage+vFacing,bodyX,bodyY,bodyHFacing*sX,sX,bodyRot,skinTone,1)
    i = 0 repeat(bodyItems){i++ draw_sprite_ext(bodyItem[i],2+bodyImage+bodyVFacing,bodyX,bodyY,bodyHFacing*sX,sX,bodyRot,bodyColour[i],1)}
}

if vFacing = 1
{
    //Hair (Back)
    draw_sprite_ext(hairStyle,4+bounce,headX,headY,hFacing*sX,sX,headRot+(hipsRot*2),hairColour,hairVisible)
}

//Arms Infront of Body
if handFront[1] = true and handY[1]+(handHeight[1]*sX) < handY[2]+(handHeight[2]*sX)
{
    //Draw Arm1
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    if greatWeapon = false
    {draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],c_white,1)
    if hasShield = false
    {draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1]+facing,skinTone,1)}}
}
if handFront[2] = true
{
    //Draw Arm2
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),6),shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,skinTone,1)
    i = 0 repeat(armsItems[2-vFacing]){i++ draw_sprite_ext(armsItem[i,2-vFacing],20+32+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,armsColour[i,2-vFacing],1)}
    if greatWeapon = false
    {draw_sprite_ext(weaponSprite[2],0,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],c_white,1)
    if hasShield = false
    {draw_sprite_ext(spr_hand,0,handX[2],handY[2],bodyHFacing*sX,sX,handRot[2]+facing,skinTone,1)}}
}
if handFront[1] = true and handY[1]+(handHeight[1]*sX) >= handY[2]+(handHeight[2]*sX)
{
    //Draw Arm1
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    if greatWeapon = false
    {draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],c_white,1)
    if hasShield = false
    {draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1]+facing,skinTone,1)}}
}

if greatWeapon = true
{
    //Hands Infront of Body
    if handFront[1] = true and handY[1]+(handHeight[1]*sX) < handY[2]+(handHeight[2]*sX)
    {
        //Draw Hand1
        draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],c_white,1)
        draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1]+facing,skinTone,1)
    }
    if handFront[2] = true
    {  
        //Draw Hand2  
        draw_sprite_ext(weaponSprite[2],0,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],c_white,1)
        draw_sprite_ext(spr_hand,0,handX[2],handY[2],bodyHFacing*sX,sX,handRot[2]+facing,skinTone,1)
    }
    if handFront[1] = true and handY[1]+(handHeight[1]*sX) >= handY[2]+(handHeight[2]*sX)
    {    
        //Draw Hand1
        draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],c_white,1)
        draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1]+facing,skinTone,1)
    }
}

//Shader
shader_reset()

/*TEMP TEST
draw_set_colour(c_green)
//draw_arrow(shldrX[1+shldrSwap]+50,shldrY[1+shldrSwap],handX[1]+50,handY[1],5)
draw_arrow(x,y,x+lengthdir_x(handDist[1]*sX, handDir[1]),y+lengthdir_y(handDist[1]*sX, handDir[1]),5)
draw_set_colour(c_red)
//draw_arrow(shldrX[2-shldrSwap]+50,shldrY[2-shldrSwap],handX[2]+50,handY[2],5)
draw_arrow(x,y,x+lengthdir_x(handDist[2]*sX, handDir[2]),y+lengthdir_y(handDist[2]*sX, handDir[2]),5)

#define randomizeHumanoid
//TEMP

//Gender and Size
raceMove = 0
gender = choose(femme,femme,masc)
var s = min(choose(1,1,2,2,3,3,4)+gender,4)
var i
var r = choose(1,1,1,1,1,2,2,2,3,3,4,4,5,6,7)

switch(r)
{
    case 1: //High Elf
    raceHead = spr_elfHead
    race = "High Elf"
    skinTone = choose(fair,fair,fair,dark,beige,beige,pale,pale)
    i = choose(0,0,0,1,1,1,2)
    s = min(choose(1,1,1,2,2,3,3,4)+gender,4)
    
        legSprite = spr_leg
        legSpriteMod = 0 
        hipsOffset = 11+i
        height = 28+i
    
    break
    
    case 2: //Human
    raceHead = spr_humanHead
    race = "Irunian Human"
    skinTone = choose(dark,dark,beige,beige,beige)
    i = choose(0,0,1,2)
    s = min(choose(1,1,2,2,3,3,4)+gender,4)
    
        legSprite = spr_leg
        legSpriteMod = 0 
        hipsOffset = 11+i
        height = 28+i
    break
    
    case 3: //Dwarf
    raceHead = spr_humanHead
    skinTone = choose(fair,pale)
    race = "Dwarf"
    i = choose(0,0,0,1,1)
    s = 4   //min(choose(3,3,4)+gender,4)
    
        legSprite = spr_shortLeg
        legSpriteMod = 1
        hipsOffset = 8+i
        height = 25+i
        raceMove = -1
        //headOffset -= 1
    
    break
    
    case 4: //Halfling
    raceHead = choose(spr_humanHead,spr_elfHead)
    skinTone = choose(fair,fair,fair,dark,beige,beige,pale,pale)
    race = "Halfling"
    i = 0
    s = choose(1,1,1,2,3)
    
        legSprite = spr_shortLeg
        legSpriteMod = 1
        hipsOffset = 8+i
        height = 24+i
        raceMove = -1
        
    bodyOffset -= 1    
    break
    
    case 5: //Orc
    raceHead = spr_humanHead
    skinTone = choose(orcBrown,orcGreen)
    race = "Orc"
    i = choose(0,1,1,1,2,2)
    s = min(choose(2,2,3,3,4)+gender,4)
    
        legSprite = spr_leg
        legSpriteMod = 0 
        hipsOffset = 11+i
        height = 28+i+i
    
    bodyOffset += i            
    break
    
    case 6: //Tiefling
    raceHead = spr_elfHead
    skinTone = choose(fair,demonRed)
    race = "Tiefling"
    i = choose(0,1,1,2)
    s = min(choose(1,1,1,2,2,3,3)+(gender*2),4)
    
        legSprite = spr_leg
        legSpriteMod = 0 
        hipsOffset = 11+i
        height = 28+i  
    break
        
    case 7: //Northern Human
    raceHead = spr_humanHead
    race = "Northern Human"
    skinTone = choose(pale,pale,fair)
    i = choose(0,0,1,2,2)
    s = min(choose(1,2,2,3,3,4)+gender,4)
    
        legSprite = spr_leg
        legSpriteMod = 0 
        hipsOffset = 11+i
        height = 28+i
    
    break
}

if skinTone = fair or skinTone = pale
{
    hairColour = choose(black,dkBrown,dkRed,c_yellow)
}

if skinTone = beige
{
    hairColour = choose(black,dkBrown)
}

legAdjust[1] = i
legAdjust[2] = i

//Faces
if gender = masc
{
    faceImage = choose(0,2)
}

/*Randomizing heights
if bodyOffset > 4
{
    i = choose(-1,0,0,0,1)
    bodyOffset -= i
    height -= i
}
*/

//size test
//s = 1


//Old Characters headOff -1, headAdj +1
//Upright Characters headAdj -1

#define humanoidPortrait
with(argument0)
{
    shader_set(global.shader)
    
    //Hair
    draw_sprite_ext(hairStyle,4,argument1,argument2,argument3,argument3,0,hairColour,hairVisible)

    //Upper Body
    draw_sprite_general(spr_body,bodyImage,0,0,12,12-headOffset,argument1-(6*argument3)+(headAdjust*-argument3),argument2-(6*argument3)+(headOffset*argument3),argument3,argument3,0,skinTone,skinTone,skinTone,skinTone,1)
    i = 0 repeat(bodyItems){i++ draw_sprite_general(bodyItem[i],2+bodyImage,0,0,12,12-headOffset,argument1-(6*argument3)+(headAdjust*-argument3),argument2-(6*argument3)+(headOffset*argument3),argument3,argument3,0,bodyColour[i],bodyColour[i],bodyColour[i],bodyColour[i],1)}

    //Head and Hair
    draw_sprite_ext(headSprite,faceImage,argument1,argument2,argument3,argument3,0,skinTone,1)
    draw_sprite_ext(spr_eyes,faceImage,argument1,argument2,argument3,argument3,0,eyeColour,1)
    draw_sprite_ext(hairStyle,0,argument1,argument2,argument3,argument3,0,hairColour,hairVisible)
    draw_sprite_ext(earSprite,0,argument1,argument2,argument3,argument3,0,skinTone,1)
    draw_sprite_general(beardStyle,0,0,0,7,8,argument1,argument2,argument3,argument3,0,hairColour,hairColour,hairColour,hairColour,1)
    i = 0 repeat(headItems){i++ draw_sprite_ext(headItem[i],0,argument1,argument2,argument3,argument3,0,headColour[i],1)}
    
    shader_reset()
}
