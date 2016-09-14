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
raceHead = spr_humanHead
skinTone = fair
hairStyle = spr_upHair
hairColour = black
hairVisible = true

//Animation
animStep[0] = 0
animPriority[0] = 0
animIndex[0] = animIdle
animStep[1] = 0
animPriority[1] = 0
animIndex[1] = animIdle
animStep[2] = 0
animPriority[2] = 0
animIndex[2] = animIdle

alarm[5] = 5

faceImage = 0
bodyImage = 0
hipsImage = 0
chstImage = 0
legSprite = spr_leg
legSpriteMod = 0        //Set to 0 for regular legs, 1 for short legs

//Armour 
bodyItem[0] = spr_none
hipsItem[0] = spr_none
skrtItem[0] = spr_none
beltItem[0] = spr_none
headItem[0] = spr_none
legsItem[0,1] = spr_none
legsItem[0,2] = spr_none
armsItem[0,1] = spr_none
armsItem[0,2] = spr_none

legsItem[1,1] = spr_none
legsItem[1,2] = spr_none
armsItem[1,1] = spr_none
armsItem[1,2] = spr_none

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
randomizeHumanoid()
tempArmourRandomize()

#define drawHumanoid
//Draw a humanoid

    //Adjust Bones
    
//Body Facing and Direction
twist(bodyTwist)

hipsX = round(x)+(hipsThrust*hFacing)
hipsY = round(y)-hipsOffset-hipsBounce-h+(global.zLevel*30)

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
handY[1] = round(y+lengthdir_y(handDist[1], facing+(bodyHFacing*handDir[1]))-handHeight[1]-h)+(global.zLevel*30)

handX[2] = round(x+lengthdir_x(handDist[2], facing+(bodyHFacing*handDir[2])))
handY[2] = round(y+lengthdir_y(handDist[2], facing+(bodyHFacing*handDir[2]))-handHeight[2]-h)+(global.zLevel*30)

//Correct Shoulder Rotation
shldrSwap = 0
if bodyVFacing = 0
{
    shldrSwap = 1
}

//If using a great weapon, move second hand
if greatWeapon = true
{
    handX[2] = round(handX[1]+lengthdir_x(2, facing+(hFacing*handRot[1])))
    handY[2] = round(handY[1]+lengthdir_y(2, facing+(hFacing*handRot[1])))
}

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
       
        //Char Draw
                
//Arms Behind Body
if bodyVFacing = 1 and handY[1] < handY[2]
{
    //Draw Hand1
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(array_height_2d(armsItem)-1){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],1,bodyHFacing,facing+(bodyHFacing*handRot[1]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing,1,handRot[1]+facing,skinTone,1)
}
if abs(angle_difference(270,facing+(hFacing*handDir[2]))) > 90
{
    //Draw Hand2
    draw_sprite_ext(spr_arms,(7*max(armHFacing[2],0))+min(round(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap])),6),shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*armHFacing[2],armStretch[2],handPoint[2]+90,skinTone,1)
    i = 0 repeat(array_height_2d(armsItem)-1){i++ draw_sprite_ext(armsItem[i,2-vFacing],(20*max(armHFacing[2],0))+32+armLength[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap],bodyHFacing*armHFacing[2],armStretch[2],handPoint[2]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[2],0,handX[2],handY[2],1,bodyHFacing,facing+(bodyHFacing*handRot[2]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[2],handY[2],bodyHFacing,1,handRot[2]+facing,skinTone,1)
}
if bodyVFacing = 1 and handY[1] >= handY[2]
{
    //Draw Hand1
    draw_sprite_ext(spr_arms,7-(7*max(armHFacing[1],0))+min(round(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap])),6),shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,skinTone,1)
    i = 0 repeat(array_height_2d(armsItem)-1){i++ draw_sprite_ext(armsItem[i,1+vFacing],20-(20*max(armHFacing[2],0))+32+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],bodyHFacing*armHFacing[1],armStretch[1],handPoint[1]+90,c_white,1)}
    draw_sprite_ext(weaponSprite[1],0,handX[1],handY[1],1,bodyHFacing,facing+(bodyHFacing*handRot[1]),c_white,1)
    draw_sprite_ext(spr_hand,0,handX[1],handY[1],bodyHFacing,1,handRot[1]+facing,skinTone,1)
}

//Skirt Back
i = 0 repeat(array_length_1d(skrtItem)-1){i++ draw_sprite_ext(skrtItem[i],skrtAnim+(legSpriteMod*6)+1-vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}

//Foreleg
draw_sprite_ext(legSprite,legAnim[1]+vFacing,legX[1],legY[1],hFacing,1,legRot[1],skinTone,1)
i = 0 repeat(array_height_2d(legsItem)-1){i++ draw_sprite_ext(legsItem[i,1+vFacing],20+vFacing+(legSpriteMod*20)+legAnim[1],legX[1],legY[1],hFacing,1,legRot[1],c_white,1)}

//Rear Leg
draw_sprite_ext(legSprite,legAnim[2]+vFacing,legX[2],legY[2],hFacing,1,legRot[2],skinTone,1)
i = 0 repeat(array_height_2d(legsItem)-1){i++ draw_sprite_ext(legsItem[i,2-vFacing],20+vFacing+(legSpriteMod*20)+legAnim[2],legX[2],legY[2],hFacing,1,legRot[2],c_white,1)}

//Hips
draw_sprite_ext(spr_hips,hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,skinTone,1)
draw_sprite_ext(spr_downHair,hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,hairColour,1)
i = 0 repeat(array_length_1d(hipsItem)-1){i++ draw_sprite_ext(hipsItem[i],12+hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}

//Skirt
i = 0 repeat(array_length_1d(skrtItem)-1){i++ draw_sprite_ext(skrtItem[i],skrtAnim+(legSpriteMod*6)+vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}

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

    //Belt
    i = 0 repeat(array_length_1d(beltItem)-1){i++ draw_sprite_ext(beltItem[i],12+hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}
    
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

    //Belt
    i = 0 repeat(array_length_1d(beltItem)-1){i++ draw_sprite_ext(beltItem[i],12+hipsImage+vFacing,hipsX,hipsY,hFacing,1,hipsRot,c_white,1)}
}

if vFacing = 1
{
    //Hair (Back)
    draw_sprite_ext(hairStyle,4+bounce,headX,headY,hFacing,1,headRot+(hipsRot*2),hairColour,hairVisible)
}

/* Height Line
draw_set_colour(c_purple)
draw_line(x-10,y+1,x-10,y-height+1)
draw_line(x-10,y+1,x-12,y+1)
draw_line(x-10,y-height+1,x-12,y-height+1)
*/

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


#define randomizeHumanoid
//Gender and Size
gender = choose(gndr_female)//,gndr_female,gndr_male)
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
        height = 24+i
        headOffset -= 1
    
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
      
    headItem[1] = spr_horns    
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
if gender = gndr_male
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

switch(s)
{
    //Small characters
    case 1:
    hipsImage = 0
    bodyImage = 0
    bodyAdjust = choose(0,-1)
    chstAdjust = 0
    break
    
    //Medium characters
    case 2:
    hipsImage = 2
    bodyImage = choose(0,2)
    bodyAdjust = -1
    if bodyImage = 0 {bodyAdjust = 0}
    chstAdjust = 1
    break
    
    //Medium characters
    case 3:
    hipsImage = 4
    bodyImage = choose(2,4)
    bodyAdjust = -1
    break
    
    //Large characters
    case 4:
    hipsImage = 6
    bodyImage = choose(2,4)
    legOffset[2] = 4
    bodyAdjust = -1
    break
}

switch(bodyImage)
{
    case 0: //Small Body
    shldrOffset[1] = 4
    shldrOffset[2] = 3
    shldrAdjust = 0
    chstImage = choose(1,2)
    if chstImage = 2 {bodyAdjust = -1}
    chstAdjust += 1+bodyAdjust
    if chstImage = 1 {chstAdjust = 1}
    headAdjust = 1
    break
    
    case 2: //Medium Body
    shldrOffset[1] = 5
    shldrOffset[2] = 4
    shldrAdjust = 1
    chstImage = 3
    chstAdjust = 1
    headOffset += 1 
    height += 1
    headAdjust = 1   
    break
    
    case 4: //Big Body
    shldrOffset[1] = 5
    shldrOffset[2] = 5
    shldrAdjust = 1
    chstImage = 3
    chstAdjust = 1
    headOffset += 1
    height += 1
    headAdjust = 0
    break
}

//Male chest exception
if gender = gndr_male
{
    chstImage = 0
}

//Establish Hand height
handHeight[1] += height-28
handHeight[2] += height-28

//Old Characters headOff -1, headAdj +1
//Upright Characters headAdj -1