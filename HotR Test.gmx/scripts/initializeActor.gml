#define initializeActor
//Initialize vital actor variables
//initializeActor()
//Used in the create event of all game actors

//Animation and Drawing (Temp)
humanoid(0)

//Game Attributes
initializeCharStats()

//Initiative
initSlot = instance_create(20,20,obj_initiativeSlot)
initSlot.owner = id
initSlot.order = 0
initSlot.delay = 1+random(4)
initiativeSlotReset()

//Grid
isoX = 1
isoY = 1
isoZ = 0
isoTile = noone

//Move
canMove = true
canAct = true
isMoving = false

//Facing
hFacing = 1
vFacing = 0
facing = 0

//Lifebar
lifeVis = life
regenTime = 0

//AI Core
player = true
team = 1
actionString = "Idle"
action = actIdle
active = true

controlled = false

//Control
rangeAttack = true
greatWeapon = false
dualWield = false

//Pathing
pathArray[0] = isoTile
pathLength = 0
moveStep = 0
moveDur = 5
moveX = x
moveY = y
moveZ = 0

//Visuals
h = 0
image_speed = 15/global.fspd
vis = false

//(Presently Obsolete)
//zspd = 0
//fid = -4
//fh = 0
//grounded = true
//atkHand = 1
//atkTime = 0
//engageRange = 1 //In metres
//xOff = 0
//yOff = 0
//targetX = x
//targetY = y
//targetId = -4
//myPath = path_add()
//path_set_kind(myPath, 1)
//path_set_closed(myPath, false)
//path_add_point(myPath,x,y,1)

#define initializeCharStats
//Initialize game stats for actors
//initializeCharStats()
//Used in the create event of all game actors

//Bio
//Temp Name
name = choose("Gae","Mop","Quar","She","Be")+choose("ah","or","gash","ivik","k","alia","rae")+" "+choose("Frost","Strong","Kind","Green","Free","Swift","Blue")+choose("blade","storm","heart","hilt","foot","man","tree")

//Attributes
might = 5
grace = 5
intellect = 5
will = 5
fellowship = 5

//Temp randomizer
movement = 0
scr_charactergenerator()

//Size and Movement
size = 1
movement += 4+((grace-8)*.2)        //metres to a move action
movementBonus = 3+((grace-8)*.3)    //running bonus
haste = 1+((grace-8)*.03) 

//Skill
mSkill = 1+((grace-8)*.1)+((intellect-8)*.2)
rSkill = 1+((grace-8)*.1)+((intellect-8)*.2)
cSkill = 1+((grace-8)*.1)+((intellect-8)*.2)

//Offense
lethality = 0
atkDPS = (might-8)*.25
atkForce = 1+((might-8)*.05)
atkHaste = 1+((grace-8)*.03)

//Defence
dodge = 20
armMax = 4      //Armour is measured in quarters
arm = 4
prot = 0
enc = 0

//Resistance
fResistMax = 25+(grace-8)+(might-8)
fResist = fResistMax
pResistMax = 25+(will-8)+(might-8)
pResist = pResistMax
mResistMax = 25+(intellect-8)+(will-8)
mResist = mResistMax

//Vitals
lifeMax = 10+(will-8)+choose(0,2,4,6,8) //Temp
life = lifeMax
lifeRegen = 2+((will-8)*.2)

vitMax = 20+((might-8)*2)
vit = vitMax

stmMax = 10+(will-8)+(grace-8)
stm = stmMax
stmRegen = 5+(stmMax*.1)

morMax = 10+((will-8)*2)
mor = morMax
morRegen = 5+(morMax*.1)

//Temp initialize of weapons for weapon users
initializeWeapon(1)
initializeWeapon(2)

#define initializeWeapon
//Initialize basic weapon variables to prevent errors
//initializeWeapon(hand)
//Used in the create event of all game actors who use weapons

wepType[argument0] = melee

wepPow[argument0] = 4
wepPowRng[argument0] = .3
wepStrMult[argument0] = 1
wepPen[argument0] = 1
wepSpeed[argument0] = 1.3
wepRange[argument0] = 15

//Weapon Sprites (Temp)
weaponSprite[1] = choose(spr_axe,spr_greatSword,spr_spear,spr_bow)
weaponSprite[2] = spr_none 

/*Temp
i = choose(1)
switch(i)
{
case 1:
dualwielding = false
wepPow[1] = 4
wepPowRng[1] = .3
wepStrMult[1] = 1
wepPen[1] = 1
wepForce[1] = 1
wepSpeed[1] = 1.3
wepRange[1] = 1
break

case 2:
dualwielding = true

wepPow[1] = 4
wepPowRng[1] = .3
wepStrMult[1] = 1
wepPen[1] = 1
wepForce[1] = 1
wepSpeed[1] = 1.3
wepRange[1] = 1

wepPow[2] = 2
wepPowRng[2] = .3
wepStrMult[2] = .8
wepPen[2] = 1
wepForce[2] = 1
wepSpeed[2] = 2
wepRange[2] = 1

break

case 3:
dualwielding = false
wepPow[1] = 7.5
wepPowRng[1] = .3
wepStrMult[1] = 1.2
wepPen[1] = 2
wepForce[1] = 1
wepSpeed[1] = .85
wepRange[1] = 1
break
}