//Initialize character script
//scr_initialize()
//Used in the create event of all game actors

//Animation and Drawing
scr_humanoid(0)

//Game Attributes
scr_initializeCharStats()

//Initiative
initSlot = instance_create(20,20,obj_initiativeSlot)
initSlot.owner = id
initSlot.order = 0
initSlot.delay = 1+random(4)
scr_initiativeSlotReset()

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
controlScript = scr_control
actionString = "Idle"
action = act_idle
active = true

controlled = false

dualwielding = false

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
