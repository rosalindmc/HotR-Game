//Initialize game stats for actors script
//scr_initializeCharStats()
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
movement += 4+((grace-8)*.2)    //metres to a move action
movementBonus = 3+((grace-8)*.3)   //running bonus
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
lifeMax = 10+(will-8)+choose(0,2,4,6,8)
life = lifeMax
lifeRegen = 2+((will-8)*.2)

vitMax = 20+((might-8)*2)
vit = vitMax
stmMax = 10+(will-8)+(grace-8)
stm = stmMax
morMax = 10+((will-8)*2)
mor = morMax

//Temp initialize of weapons for weapon users
scr_initializeWeapon(1)
scr_initializeWeapon(2)
