//Initialize character script
//scr_initialize()
//Used in the create event of all game actors

//Animation and Drawing
scr_humanoid(0)

//Game Attributes
scr_initializeCharStats()

//Move
canMove = true
canAct = true
isMoving = false
dTerrain = false
hspd = 0
vspd = 0
fric = .4
alarm[0] = 15

//Facing
hFacing = 1
vFacing = 0
facing = 0

//Height Map
h = 0
zspd = 0
fid = -4
fh = 0
grounded = true

//Lifebar
lifeVis = life
regenTime = 0

//AI Core
team = 1
player = true
charScript = scr_pc
controlScript = scr_control
actionString = "Idle"
action = act_idle
active = true
dualwielding = false
atkHand = 1
atkTime = 0
engageRange = 1 //In metres
xOff = 0
yOff = 0
moveX = x
moveY = y
targetX = x
targetY = y
targetId = -4
controlled = false
myPath = path_add()
path_add_point(myPath,x,y,0)
moveStep = 0
canMove = true
