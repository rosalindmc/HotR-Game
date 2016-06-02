//Humanoid animation type script
//scr_humanoid(Howtouse)
//0 = Initialize a humanoid, 1 = Draw a humanoid

var a0 = argument0

switch(a0)
{
case 0:  //Initialize variables
animType = scr_humanoidtemp
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

draw_sprite_ext(spr_char,vFacing,x,y-h,hFacing,1,0,c_white,1)
break

}
