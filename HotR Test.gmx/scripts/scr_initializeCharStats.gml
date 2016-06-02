//Initialize game stats for actors script
//scr_initializeCharStats()

//Attributes
might = 8
grace = 8
intellect = 8
will = 8
fellowship = 8

//Temp
scr_charactergenerator()

//Size and Movement
size = 6
movement = 4+((grace-8)*.12)        //metres per second
movementBonus = 2+((grace-8)*.25)   //running bonus

//Skill
mSkill = 1+((grace-8)*.1)+((intellect-8)*.2)
rSkill = 1+((grace-8)*.1)+((intellect-8)*.2)
cSkill = 1+((grace-8)*.1)+((intellect-8)*.2)

//Offense
attack = (grace-8)
lethality = 0
atkDPS = (might-8)*.25
atkForce = 1+((might-8)*.05)
atkHaste = 1+((grace-8)*.03)

//Defence
defence = (grace-8)
dodge = 20
dodgeTime = 5
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

//Temp
scr_initializeWeapon(1)
scr_initializeWeapon(2)
