//Generates new random seed
randomize()

//Graphics
facing = 1

//Move
movement = 2
can_move = true
is_moving = false
hspd = 0
vspd = 0
fric = .4
alarm[0] = 15

//AI Core
might = 5
toughness = 5
will = 5
intellect = 5
fellowship = 5
movex = x
movey = y
xoff = 0
yoff = 0
targetx = x
targety = y
controlled = false
my_path = path_add()
path_add_point(my_path,x,y,0)
player = true
size = 4
height = 28
movestep = 0

//Temp
ii = 0
