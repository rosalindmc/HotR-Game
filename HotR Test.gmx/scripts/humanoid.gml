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
chstSprite = spr_chest
bodySprite = spr_body
hipsSprite = spr_hips
armsSprite = spr_arms
handSprite = spr_hand
armsLength = 1
eyeVis = true
skinTone = fair
eyeColour = choose(eyeBlue,eyeGreen,c_dkgray,eyeViolet,c_olive,eyeBrown)
hairStyle = spr_shortHair
beardStyle = spr_none
hairColour = black
hairVisible = true
portraitAdj = 0

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
girdleItem[0] = spr_none
girdleColour[0] = c_white
girdleItems = 0
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
handHeightAdj[1] = 1
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
handHeightAdj[2] = 1
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
skrtSize = 0

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
chstOffset = 0

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

    //Adjust Bones
    
//Body Facing and Direction
twist(bodyTwist)

hipsX = round(50)+(hipsThrust*sX*hFacing)
hipsY = round(75)-((hipsOffset+hipsAdjust+hipsBounce)*sX)

legX[1] = round(hipsX+lengthdir_x(legOffset[1]*hFacing*sX, hipsRot)+lengthdir_x(legAdjust[1]*sX, hipsRot-90)+lengthdir_x(hipsBounce*sX, hipsRot-90))
legY[1] = round(hipsY+lengthdir_y(legOffset[1]*hFacing*sX, hipsRot)+lengthdir_y(legAdjust[1]*sX, hipsRot-90)+lengthdir_y(hipsBounce*sX, hipsRot-90))

legX[2] = round(hipsX+lengthdir_x(legOffset[2]*hFacing*sX, hipsRot-180)+lengthdir_x(legAdjust[2]*sX, hipsRot-90)+lengthdir_x(hipsBounce*sX, hipsRot-90))
legY[2] = round(hipsY+lengthdir_y(legOffset[2]*hFacing*sX, hipsRot-180)+lengthdir_y(legAdjust[2]*sX, hipsRot-90)+lengthdir_y(hipsBounce*sX, hipsRot-90))

bodyX = round(hipsX+lengthdir_x(bodyOffset*sX, hipsRot+90)+lengthdir_x(bodyAdjust*hFacing*sX, hipsRot))
bodyY = round(hipsY+lengthdir_y(bodyOffset*sX, hipsRot+90)+lengthdir_y(bodyAdjust*hFacing*sX, hipsRot))

chstX = round(bodyX+lengthdir_x((chstOffset+max(bounce-rigid,0))*sX, bodyRot+90)+lengthdir_x(chstAdjust*bodyHFacing*sX, bodyRot))
chstY = round(bodyY+lengthdir_y((chstOffset+max(bounce-rigid,0))*sX, bodyRot+90)+lengthdir_y(chstAdjust*bodyHFacing*sX, bodyRot))

headX = round(bodyX+lengthdir_x(headOffset*sX, bodyRot+90)+lengthdir_x((headAdjust+headThrust)*hFacing*sX, bodyRot))
headY = round(bodyY+lengthdir_y(headOffset*sX, bodyRot+90)+lengthdir_y((headAdjust+headThrust)*hFacing*sX, bodyRot))

shldrX[1] = round(bodyX+lengthdir_x(shldrOffset[1]*bodyHFacing*sX, bodyRot)+lengthdir_x(shldrAdjust, bodyRot+90))
shldrY[1] = round(bodyY+lengthdir_y(shldrOffset[1]*bodyHFacing*sX, bodyRot)+lengthdir_y(shldrAdjust, bodyRot+90))

shldrX[2] = round(bodyX+lengthdir_x(shldrOffset[2]*bodyHFacing*sX, bodyRot-180)+lengthdir_x(shldrAdjust, bodyRot+90))
shldrY[2] = round(bodyY+lengthdir_y(shldrOffset[2]*bodyHFacing*sX, bodyRot-180)+lengthdir_y(shldrAdjust, bodyRot+90))

handX[1] = round(hipsX+lengthdir_x(handDist[1]*sX*armsLength, handDir[1]))
handY[1] = round(hipsY+lengthdir_y(handDist[1]*sX*armsLength, handDir[1]))-((handHeight[1]+handHeightAdj[1])*sX)

handX[2] = round(hipsX+lengthdir_x(handDist[2]*sX*armsLength, handDir[2]))
handY[2] = round(hipsY+lengthdir_y(handDist[2]*sX*armsLength, handDir[2]))-((handHeight[2]+handHeightAdj[2])*sX)

//If using a great weapon, move second hand
if greatWeapon = true
{
    handX[2] = round(handX[1]+lengthdir_x(greatWeaponSize*sX*((shldrSwap*2)-1), (handRot[1])))
    handY[2] = round(handY[1]+lengthdir_y(greatWeaponSize*sX*((shldrSwap*2)-1), (handRot[1])))
    
    handX[1] = round(handX[1]+lengthdir_x(greatWeaponSize*-sX*((shldrSwap*2)-1), (handRot[1])))
    handY[1] = round(handY[1]+lengthdir_y(greatWeaponSize*-sX*((shldrSwap*2)-1), (handRot[1])))
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
       
//Weapon Particles
if wepPart[1] = true
{
    if greatWeapon = true
    {
        part_emitter_region(ps3,em3,handX[2-shldrSwap]+lengthdir_x(wepPartMin[1],handRot[1]),handX[2-shldrSwap]+lengthdir_x(wepPartMax[1],handRot[1]),handY[1]+lengthdir_y(wepPartMin[1],handRot[1]),handY[2-shldrSwap]+lengthdir_y(wepPartMax[1],handRot[1]),ps_shape_line,1)
    }
    else
    {
        part_emitter_region(ps3,em3,handX[2-shldrSwap]+lengthdir_x(wepPartMin[1],handRot[1]),handX[2-shldrSwap]+lengthdir_x(wepPartMax[1],handRot[1]),handY[1]+lengthdir_y(wepPartMin[1],handRot[1]),handY[2-shldrSwap]+lengthdir_y(wepPartMax[1],handRot[1]),ps_shape_line,1)
    }
    part_emitter_burst(ps3,em3,wepPs[1],(100+((wepPartMax[1]-wepPartMin[1])*10))/global.fspd)
}
if wepPart[2] = true
{
    part_emitter_region(ps4,em4,handX[2]+lengthdir_x(wepPartMin[2],handRot[2]),handX[2]+lengthdir_x(wepPartMax[2],handRot[2]),handY[2]+lengthdir_y(wepPartMin[2],handRot[2]),handY[2]+lengthdir_y(wepPartMax[2],handRot[2]),ps_shape_line,1)
    part_emitter_burst(ps4,em4,wepPs[2],(100+((wepPartMax[2]+wepPartMin[2])*10))/global.fspd)
}

        //Char Draw
        
if surface_exists(charSurf)  
{        
surface_set_target(charSurf)
draw_clear_alpha(c_white,0)
           
//Arms Behind Body
if greatWeapon = true and handFront[2-shldrSwap] = false 
{
    //draw_sprite_ext(weaponSprite[1],0,handX[2-shldrSwap],handY[2-shldrSwap],sX,bodyHFacing*sX,handRot[2-shldrSwap],c_white,1)
    part_system_drawit(ps3)
    draw_sprite_ext(weaponSprite[1],2,handX[2-shldrSwap],handY[2-shldrSwap],sX,bodyHFacing*sX,handRot[1],wepColour[1,1],1)
    draw_sprite_ext(weaponSprite[1],3,handX[2-shldrSwap],handY[2-shldrSwap],sX,bodyHFacing*sX,handRot[1],wepColour[1,2],1)
    //Draw Arms
    draw_sprite_ext(handSprite,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1],skinTone,1)
    draw_sprite_ext(handSprite,0,handX[2],handY[2],bodyHFacing*sX,sX,handRot[2],skinTone,1)
    draw_sprite_ext(armsSprite,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    draw_sprite_ext(armsSprite,(7*max(armHFacing[2],0))+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,skinTone,1)
    i = 0 repeat(armsItems[2-vFacing]){i++ draw_sprite_ext(armsItem[i,2-vFacing],20-(20*max(armHFacing[1],0))+32+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,armsColour[i,2-vFacing],1)}
}
else
{
if handFront[1] = false and handY[1]+(handHeight[1]*sX) < handY[2]+(handHeight[2]*sX)
{
    //Draw Hand1
    draw_sprite_ext(armsSprite,7-(7*max(armHFacing[1],0))+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    part_system_drawit(ps3)
    draw_sprite_ext(weaponSprite[1],2,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],wepColour[1,1],1)
    draw_sprite_ext(weaponSprite[1],3,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],wepColour[1,2],1)
    draw_sprite_ext(handSprite,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1],skinTone,1)
}
if handFront[2] = false
{
    //Draw Hand2
    part_system_drawit(ps4)
    if hasShield = true
    {draw_sprite_ext(weaponSprite[2],2,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],wepColour[2,1],1)
    draw_sprite_ext(weaponSprite[2],3,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],wepColour[2,2],1)}
    draw_sprite_ext(armsSprite,(7*max(armHFacing[2],0))+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,skinTone,1)
    i = 0 repeat(armsItems[2-vFacing]){i++ draw_sprite_ext(armsItem[i,2-vFacing],20-(20*max(armHFacing[1],0))+32+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,armsColour[i,2-vFacing],1)}
    if hasShield = false
    {draw_sprite_ext(weaponSprite[2],2,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],wepColour[2,1],1)
    draw_sprite_ext(weaponSprite[2],3,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],wepColour[2,2],1)}
    draw_sprite_ext(handSprite,0,handX[2],handY[2],bodyHFacing*sX,sX,handRot[2],skinTone,1)
}
if handFront[1] = false and handY[1]+(handHeight[1]*sX) >= handY[2]+(handHeight[2]*sX)
{
    //Draw Hand1
    part_system_drawit(ps3)
    draw_sprite_ext(armsSprite,7-(7*max(armHFacing[1],0))+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    draw_sprite_ext(weaponSprite[1],2,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],wepColour[1,1],1)
    draw_sprite_ext(weaponSprite[1],3,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],wepColour[1,2],1)
    draw_sprite_ext(handSprite,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1],skinTone,1)
}
}

//Skirt Back
i = 0 repeat(skrtItems){i++ draw_sprite_ext(skrtItem[i],skrtAnim+(6*skrtSize)+(1-vFacing),hipsX,hipsY,hFacing*sX,sX,hipsRot,skrtColour[i],1)}

//Foreleg
draw_sprite_ext(legSprite,legAnim[1]+vFacing,legX[1],legY[1],hFacing*sX,sX,legRot[1],skinTone,1)
i = 0 repeat(legsItems[1+vFacing]){i++ draw_sprite_ext(legsItem[i,1+vFacing],20+vFacing+(legSpriteMod*20)+legAnim[1],legX[1],legY[1],hFacing*sX,sX,legRot[1],legsColour[i,1+vFacing],1)}

//Rear Leg
draw_sprite_ext(legSprite,legAnim[2]+vFacing,legX[2],legY[2],hFacing*sX,sX,legRot[2],skinTone,1)
i = 0 repeat(legsItems[2-vFacing]){i++ draw_sprite_ext(legsItem[i,2-vFacing],20+vFacing+(legSpriteMod*20)+legAnim[2],legX[2],legY[2],hFacing*sX,sX,legRot[2],legsColour[i,2-vFacing],1)}

//Hips
draw_sprite_ext(hipsSprite,hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,skinTone,1)
draw_sprite_ext(spr_downHair,hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,hairColour,1)
i = 0 repeat(underHipsNum){i++ draw_sprite_ext(hipsItem[i],12+hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,hipsColour[i],1)}

//Skirt
i = 0 repeat(skrtItems){i++ draw_sprite_ext(skrtItem[i],skrtAnim+(6*skrtSize)+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,skrtColour[i],1)}

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
    draw_sprite_ext(bodySprite,bodyImage+vFacing,bodyX,bodyY,bodyHFacing*sX,sX,bodyRot,skinTone,1)
    i = 0 repeat(bodyItems){i++ draw_sprite_ext(bodyItem[i],2+bodyImage+bodyVFacing,bodyX,bodyY,bodyHFacing*sX,sX,bodyRot,bodyColour[i],1)}

    //Chest
    draw_sprite_ext(chstSprite,chstImage,chstX,chstY,bodyHFacing*sX,sX,bodyRot,skinTone,1)
    i = 0 repeat(chstItems){i++ draw_sprite_ext(chstItem[i],8+chstImage,chstX,chstY,bodyHFacing*sX,sX,bodyRot,chstColour[i],1)}
}

//Belt
i = 0 repeat(girdleItems){i++ draw_sprite_ext(girdleItem[i],hipsImage+vFacing,hipsX,hipsY,hFacing*sX,sX,hipsRot,girdleColour[i],1)}

//Head and Hair
if bodyVFacing = 1{draw_sprite_ext(beardStyle,faceImage+bounce,headX,headY,headFacing*hFacing*sX,sX,headRot,hairColour,1)}
draw_sprite_ext(headSprite,faceImage+vFacing,headX,headY,headFacing*hFacing*sX,sX,headRot,skinTone,1)
draw_sprite_ext(spr_eyes,faceImage+vFacing,headX,headY,headFacing*hFacing*sX,sX,headRot,eyeColour,eyeVis)
draw_sprite_ext(hairStyle,bounce+(vFacing*2),headX,headY,headFacing*hFacing*sX,sX,headRot,hairColour,hairVisible)
draw_sprite_ext(earSprite,vFacing,headX,headY,headFacing*hFacing*sX,sX,headRot,skinTone,1)
if bodyVFacing = 0{draw_sprite_ext(beardStyle,faceImage+bounce,headX,headY,headFacing*hFacing*sX,sX,headRot,hairColour,1)}

if bodyVFacing = 1
{
    //Chest
    draw_sprite_ext(chstSprite,chstImage,chstX,chstY,bodyHFacing*sX,sX,bodyRot,skinTone,1)
    i = 0 repeat(chstItems){i++ draw_sprite_ext(chstItem[i],8+chstImage,chstX,chstY,bodyHFacing*sX,sX,bodyRot,chstColour[i],1)}
    
    //Upper Body
    draw_sprite_ext(bodySprite,bodyImage+vFacing,bodyX,bodyY,bodyHFacing*sX,sX,bodyRot,skinTone,1)
    i = 0 repeat(bodyItems){i++ draw_sprite_ext(bodyItem[i],2+bodyImage+bodyVFacing,bodyX,bodyY,bodyHFacing*sX,sX,bodyRot,bodyColour[i],1)}
}

//Head Items
i = 0 repeat(headItems){i++ draw_sprite_ext(headItem[i],vFacing,headX,headY,headFacing*hFacing*sX,sX,headRot,headColour[i],1)}

if vFacing = 1
{
    //Hair (Back)
    draw_sprite_ext(hairStyle,4+bounce,headX,headY,hFacing*sX,sX,headRot+(hipsRot*2),hairColour,hairVisible)
}

//Arms Infront of Body
if handFront[1] = true and handY[1]+(handHeight[1]*sX) < handY[2]+(handHeight[2]*sX)
{
    //Draw Arm1
    part_system_drawit(ps3)
    draw_sprite_ext(armsSprite,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    if greatWeapon = false
    {draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],wepColour[1,1],1)
    draw_sprite_ext(weaponSprite[1],1,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],wepColour[1,2],1)
    draw_sprite_ext(handSprite,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1],skinTone,1)}
}

if handFront[2] = true
{
    //Draw Arm2
    part_system_drawit(ps4)
    draw_sprite_ext(armsSprite,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),6),shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,skinTone,1)
    i = 0 repeat(armsItems[2-vFacing]){i++ draw_sprite_ext(armsItem[i,2-vFacing],20+32+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*sX*armHFacing[2],armStretch[2],handPoint[2]+90,armsColour[i,2-vFacing],1)}
    if greatWeapon = false
    {draw_sprite_ext(weaponSprite[2],0,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],wepColour[2,1],1)
    draw_sprite_ext(weaponSprite[2],1,handX[2],handY[2],sX,bodyHFacing*sX,handRot[2],wepColour[2,2],1)
    if hasShield = false
    {draw_sprite_ext(handSprite,0,handX[2],handY[2],bodyHFacing*sX,sX,handRot[2],skinTone,1)}}
}

if handFront[1] = true and handY[1]+(handHeight[1]*sX) >= handY[2]+(handHeight[2]*sX)
{
    //Draw Arm1
    part_system_drawit(ps3)
    draw_sprite_ext(armsSprite,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(armsItems[1+vFacing]){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*sX*armHFacing[1],armStretch[1],handPoint[1]+90,armsColour[i,1+vFacing],1)}
    if greatWeapon = false
    {draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],wepColour[1,1],1)
    draw_sprite_ext(weaponSprite[1],1,handX[1],handY[1],sX,bodyHFacing*sX,handRot[1],wepColour[1,2],1)
    draw_sprite_ext(handSprite,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1],skinTone,1)}
}

if greatWeapon = true and handFront[2-shldrSwap] = true 
{
    part_system_drawit(ps3)
    draw_sprite_ext(weaponSprite[1],0,handX[2-shldrSwap],handY[2-shldrSwap],sX,bodyHFacing*sX,handRot[1],wepColour[1,1],1)
    draw_sprite_ext(weaponSprite[1],1,handX[2-shldrSwap],handY[2-shldrSwap],sX,bodyHFacing*sX,handRot[1],wepColour[1,2],1)
    //Draw Hand1
    draw_sprite_ext(handSprite,0,handX[1],handY[1],bodyHFacing*sX,sX,handRot[1],skinTone,1)
    //Draw Hand2  
    draw_sprite_ext(handSprite,0,handX[2],handY[2],bodyHFacing*sX,sX,handRot[2],skinTone,1)
}

//Don't draw below waterline
if instance_exists(currentTile)
{
    if currentTile.wH > 0
    {
        draw_set_blend_mode(bm_subtract)
        draw_set_colour(c_black)
        draw_rectangle(0,75-((currentTile.h+currentTile.wH)-h),100,100,false)
        draw_set_blend_mode(bm_normal)
        draw_set_colour_write_enable(true,true,true,false)
        draw_set_colour(ltBlue)
        draw_rectangle(0,75-((currentTile.h+currentTile.wH)-h),100,75-((currentTile.h+currentTile.wH)-h),true)
        draw_set_colour_write_enable(true,true,true,true)
        draw_set_colour(c_white)
    }
}

surface_reset_target()
}
else
{
    charSurf = surface_create(100,100)
}

/*TEMP TEST
draw_set_colour(c_green)
//draw_text(x+50,y,handY[1]-y+((handHeight[1]+handHeightAdj[1])*sX))
draw_arrow(shldrX[1+shldrSwap],shldrY[1+shldrSwap],handX[1],handY[1],2)
//draw_arrow(handX[1],handY[1],handX[1],y+lengthdir_y(handDist[1]*sX, handDir[1]),5)
//draw_arrow(x,y,x+lengthdir_x(handDist[1]*sX, handDir[1]),y+lengthdir_y(handDist[1]*sX, handDir[1]),5)
draw_set_colour(c_red)
//draw_text(x+50,y-10,handY[2]+(handHeight[2]*sX))
draw_arrow(shldrX[2-shldrSwap],shldrY[2-shldrSwap],handX[2],handY[2],2)
//draw_arrow(handX[2],handY[2],handX[2],y+lengthdir_y(handDist[2]*sX, handDir[2]),5)
//draw_arrow(x,y,x+lengthdir_x(handDist[2]*sX, handDir[2]),y+lengthdir_y(handDist[2]*sX, handDir[2]),5)
surface_reset_target()

#define humanoidPortrait
var c = argument0
var adj = argument4

//Hair
draw_sprite_ext(c.hairStyle,4,argument1,argument2,argument3,argument3,0,c.hairColour,c.hairVisible)

//Upper Body
draw_sprite_general(c.bodySprite,c.bodyImage,c.portraitAdj+c.headAdjust,0,12,12+adj-c.headOffset,argument1-(6*argument3),argument2-(6*argument3)+(c.headOffset*argument3),argument3,argument3,0,c.skinTone,c.skinTone,c.skinTone,c.skinTone,1)
i = 0 repeat(c.bodyItems){i++ draw_sprite_general(c.bodyItem[i],2+c.bodyImage,c.portraitAdj+c.headAdjust,0,12,12+adj-c.headOffset,argument1-(6*argument3),argument2-(6*argument3)+(c.headOffset*argument3),argument3,argument3,0,c.bodyColour[i],c.bodyColour[i],c.bodyColour[i],c.bodyColour[i],1)}

//Chest (NEEDFIX)
//draw_sprite_general(c.chstSprite,c.chstImage,c.portraitAdj+c.headAdjust-1,0,12-c.chstAdjust,10+adj-c.headOffset-c.chstOffset,argument1-((6-c.chstAdjust)*argument3),argument2-((5-c.chstOffset-c.headOffset)*argument3),argument3,argument3,0,c.skinTone,c.skinTone,c.skinTone,c.skinTone,1)
//i = 0 repeat(c.chstItems){i++ draw_sprite_general(c.chstItem[i],8+c.chstImage,c.portraitAdj+c.headAdjust-1,0,13-c.chstAdjust,12+adj-c.headOffset-c.chstOffset,argument1-((7-c.chstAdjust)*argument3),argument2-((6-c.chstOffset-c.headOffset)*argument3),argument3,argument3,0,c.chstColour[i],c.chstColour[i],c.chstColour[i],c.chstColour[i],1)}
//c.portraitAdj+c.headAdjust
//-c.headOffset
//Head and Hair
draw_sprite_ext(c.headSprite,c.faceImage,argument1,argument2,argument3,argument3,0,c.skinTone,1)
draw_sprite_ext(spr_eyes,c.faceImage,argument1,argument2,argument3,argument3,0,c.eyeColour,c.eyeVis)
draw_sprite_ext(c.hairStyle,0,argument1,argument2,argument3,argument3,0,c.hairColour,c.hairVisible)
draw_sprite_ext(c.earSprite,0,argument1,argument2,argument3,argument3,0,c.skinTone,1)
draw_sprite_general(c.beardStyle,c.faceImage,0,0,7,9+adj,argument1-(3*argument3),argument2-(4*argument3),argument3,argument3,0,c.hairColour,c.hairColour,c.hairColour,c.hairColour,1)
i = 0 repeat(c.headItems){i++ draw_sprite_ext(c.headItem[i],0,argument1,argument2,argument3,argument3,0,c.headColour[i],1)}