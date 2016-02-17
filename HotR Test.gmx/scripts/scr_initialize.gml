//Initialize character script
//scr_initialize()

//Graphics
hFacing = 1
vFacing = 0

//Temp snimType
scr_humanoid(0)

//Move
movement = 2
canMove = true
isMoving = false
hspd = 0
vspd = 0
fric = .4
alarm[0] = 15

//Attributes
might = 5
toughness = 5
will = 5
intellect = 5
fellowship = 5

//AI Core
moveX = x
moveY = y
xOff = 0
yOff = 0
targetX = x
targetY = y
controlled = false
myPath = path_add()
path_add_point(myPath,x,y,0)
player = true
size = 4
height = 28
moveStep = 0
