//Initialize character script
//scr_initialize()

//Graphics
hFacing = 1
vFacing = 0
facing = 0

//Animation
scr_humanoid(0)

//Move
canMove = true
canAct = true
isMoving = false
dTerrain = false
hspd = 0
vspd = 0
fric = .4
alarm[0] = 15

//Height Map
h = 0
zspd = 0
fid = -4
fh = 0
grounded = true

//Game Attributes
scr_initializeCharStats()

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
moveX = x
moveY = y
engageRange = 1 //In metres
xOff = 0
yOff = 0
targetX = x
targetY = y
targetId = -4
controlled = false
myPath = path_add()
path_add_point(myPath,x,y,0)
moveStep = 0
canMove = true
