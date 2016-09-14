#define dealDamage
//Deal Damage Script 
//dealDamage()

var target
var i = 0



#define weaponDamage
//Weapon Damage Script
/*weaponDamage()

var s, p

//Find Attack Speed
s = (2+(dualwielding*.5))/((wepSpeed[atkHand]))

//Find Base Attack Strength
p = wepPow[atkHand]+((wepStrMult[atkHand]*atkDPS)/s)
p *= (1-wepPowRng[atkHand]+random(wepPowRng[atkHand]*2))
dealDamage()

#define meleeDamage
//Damage script for melee attacks
//meleeDamage(Bonus Damage, Damage Mult)

//Find Attack Speed
s = (2+(dualWield*.5))/((wepSpeed[atkHand]))

//Find Base Attack Strength
p = wepPow[atkHand]+((wepStrMult[atkHand]*atkDPS)/s)+argument0

//Roll Attack Strength
p *= argument1 
p *= (1-wepPowRng[atkHand]+random(wepPowRng[atkHand]*2))

//Check Parry
//Check Block

//Armour and Penetration
a = max(0,target.arm-wepPen[atkHand])*.25*(.5+random(.5))

//Calculate how much damage has been mitigated by armour
ia = floor(p)-floor(p-a)
p = max(p-a,0)

//Randomize decimal damage (.1 = 10% to do +1)
p = floor(p+random(.99))

//Damage
target.life -= p

//Descriptor
ii = instance_create(target.x,target.y-target.h-target.height,obj_descriptor)
ii.text = string(p)+' '+string(wepType[atkHand])
ii.font = fnt_tiny

if p = 0
{
    ii.text = "No Damage"
}
else if ia > 0
{
    ii = instance_create(target.x,target.y-target.h-target.height+20,obj_descriptor)
    ii.text = string(ia)+' Mitigated'
    ii.font = fnt_tiny
    ii.alarm[0] = global.fspd/2
}
