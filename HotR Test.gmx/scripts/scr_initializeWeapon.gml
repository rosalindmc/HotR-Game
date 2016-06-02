//Weapon base variables script
//scr_initializeWeapon(hand)

wepType[argument0] = scr_melee

wepPow[argument0] = 4
wepPowRng[argument0] = .3
wepStrMult[argument0] = 1
wepPen[argument0] = 1
wepForce[argument0] = 1
wepSpeed[argument0] = 1.3
wepRange[argument0] = 1


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

