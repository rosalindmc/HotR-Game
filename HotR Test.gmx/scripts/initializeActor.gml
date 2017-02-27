#define initializeActor
//Initialize vital actor variables
//initializeActor()
//Used in the create event of all game actors

//Animation and Drawing (Temp)
humanoid(0)

//Game Attributes
initializeCharStats()

//Core
important = false

//Initiative
initSlot = instance_create(20,20,obj_initiativeSlot)
initSlot.owner = id
initSlot.order = 0
initSlot.delay = 1+random(1)
initiativeSlotReset()

//Grid
isoX = 1
isoY = 1
isoZ = 0
isoTile = noone
sightTile = noone

//Move
canMove = true
canAct = true
isMoving = false

//Facing
hFacing = 1
vFacing = 0
cFacing = 0
facing = 0

//Lifebar
lifeVis = life
regenTime = 0

//AI Core
player = false
team = 1
actionString = "Idle"
action = actIdle
controlScript = controlAI
readiedAction = false
readiedTarget = noone
active = true
target = noone
controlled = false

//Attack Qualifiers
rangeAttack = false
greatWeapon = false
dualWield = false
reach = 1.5
atkHand = 1

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
scrollVis = false
sX = 1

//Effects
status = ds_list_create()

boldGlow()
actorParticles()

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
cunning = 5
will = 5
fellowship = 5

//Temp randomizer
movement = 0

//Size and Movement
size = 1
movement += 4+((grace-8)*.2)        //metres to a move action
movementBonus = 3+((grace-8)*.3)    //running bonus
haste = 1+((grace-8)*.03) 

//Skill
mSkill = 1+((grace-8)*.1)+((cunning-8)*.2)
rSkill = 1+((grace-8)*.1)+((cunning-8)*.2)
cSkill = 1+((grace-8)*.1)+((cunning-8)*.2)

//Offense
lethality = 0
atkDPS = (might-8)
atkHaste = 1+((grace-8)*.03)

//Defence
dodge = 20
armMax = 0      //Armour is measured in quarters
arm = armMax
prot = 0
enc = 0

//Resistance
fResist = 25+(grace-8)+(might-8)
pResist = 25+(will-8)+(might-8)
mResist = 25+(cunning-8)+(will-8)
sResist = 1

//Blocking
blocks = 0
blockMax = 1
blockGen = 0
blockStr = might

//Vitals
lifeMax = 10+(will-8)
life = lifeMax
lifeRegen = 2+((will-8)*.2)

stmMax = 8+(will-8)+(grace-8)
stm = stmMax
stmRegen = 5+(stmMax*.1)

suppression = 0
bold = 0

//Initialize of weapons for weapon users
initializeTriggers()
initializeTraits()
initializeWeapon(1)
initializeWeapon(2)

#define initializeTriggers
for(i = 0; i < 6; i++)
{
    onHit[0,i] = false
    onAttack[0,i] = false
    onWound[0,i] = false
    onDown[0,i] = false
    onBlock[0,i] = false
    areHit[0,i] = false
    areWounded[0,i] = false
    onStealth[0,i] = false
    onUpkeep[0,i] = false
    onSneakAttack[0,i] = false
    onBlock[0,i] = false
    onMove[0,i] = false
    areAttacked[0,i] = false
}

onHitSize = 0
onAttackSize = 0
onWoundSize = 0
onDownSize = 0
onBlockSize = 0
areHitSize = 0
areWoundedSize = 0
onStealthSize = 0
onUpkeepSize = 0
onSneakAttackSize = 0
onBlockSize = 0
onMoveSize = 0
areAttackedSize = 0

#define initializeTraits
//Talent Effects
evasion = false
breaker = false
crunch = false
aim = 1

//Various Effects
arc = 100
atkHaste = 0
movHaste = 0
atkStaminaMult = 1
movStaminaMult = 1
missChance = 0
dmgMitigation = 0


#define initializeWeapon
//Initialize basic weapon variables to prevent errors
//initializeWeapon(hand)
//Used in the create event of all game actors who use weapons

wepClass[argument0] = melee
wepAnimType[argument0] = typeAxe

wepPow[argument0] = 1
wepType[argument0] = 'Impact'
wepPowRng[argument0] = .3
wepStrMult[argument0] = .25
wepPen[argument0] = 0
wepSpeed[argument0] = 2
wepRange[argument0] = 1
wepStamina[argument0] = .25

//Ranged Attributez
wepRPow[argument0] = 0
wepRType[argument0] = 'Impact'
wepRPowRng[argument0] = .3
wepRStrMult[argument0] = .25
wepRPen[argument0] = 0
wepRSpeed[argument0] = 1
wepRRange[argument0] = 0
wepRStamina[argument0] = .25
wepRProjectile[argument0] = obj_projectile
wepRProjSpeed[argument0] = 10

//Weapon Sprites
weaponSprite[argument0] = spr_none

#define boldGlow
ps1 = part_system_create()

p1 = part_type_create()
part_type_shape(p1,pt_shape_smoke)
part_type_size(p1,0.05,0.15,0,0)
part_type_scale(p1,1,1)
part_type_color1(p1,c_teal)
part_type_alpha2(p1,1,0)
part_type_speed(p1,120/global.fspd,240/global.fspd,0,0)
part_type_direction(p1,90,90,0,10)
part_type_gravity(p1,0,270)
part_type_orientation(p1,0,0,20,20,1)
part_type_blend(p1,1)
part_type_life(p1,global.fspd*.05,global.fspd*.15)

em1 = part_emitter_create(ps1)
#define actorParticles
ps2 = part_system_create()

//Blood
p2 = part_type_create()
part_type_shape(p2,pt_shape_pixel)
part_type_size(p2,1,1,0,0)
part_type_scale(p2,1,1)
part_type_color2(p2,c_red,dkRed)
part_type_alpha1(p2,1)
part_type_speed(p2,0,60/global.fspd,0,0)
part_type_direction(p2,0,359,0,10)
part_type_gravity(p2,(grav*metre)/global.fspd,270)
part_type_orientation(p2,0,0,0,0,0)
part_type_blend(p2,false)
part_type_life(p2,global.fspd*.5,global.fspd*1)

//Sparks




em2 = part_emitter_create(ps2)