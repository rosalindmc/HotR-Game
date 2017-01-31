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

var backstab = false

//Suppress
suppress(target,2.0)

//Facing
if angle_difference(facing,point_direction(x,0,target.x,y-target.y)) < 80
{
    backstab = true    
}

//Check Dodge
if irandom(99)+1 < target.dodge-(max(0,(mSkill-target.mSkill)*2)) and backstab = true
{
    ii = instance_create(target.x,target.y-target.h-target.height,obj_descriptor)
    ii.text = 'Dodge'
    ii.font = fnt_tiny
}
else
{
//Find Attack Speed
s = (3-(dualWield*.5))/((wepSpeed[atkHand]))

//Find Base Attack Strength
p = wepPow[atkHand]+((wepStrMult[atkHand]*atkDPS)/s)+argument0

//Roll Attack Strength
p *= argument1
p *= (1-wepPowRng[atkHand]+random(wepPowRng[atkHand]*2))

a = target.arm

//Check Block
if irandom(99)+1 < 100-(max(0,(mSkill-target.mSkill)*2)) and target.blocks > 0 and backstab = true
{
    a += (p*.5)+target.blockStr
    
    target.blocks -= 1
}

//Armour and Penetration
a = max(0,a-wepPen[atkHand])*.25*(.5+random(.5))

//Calculate how much damage has been mitigated by armour
ia = floor(p)-floor(p-a)
p = max(p-a,0)

//Randomize decimal damage (.1 = 10% to do +1)
p = floor(p+random(.99))

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
    ii.alarm[0] = global.fspd*.50
}

//Damage
target.life -= p
actorDie(target)
}

#define suppress
//supress(Supressed Character, Supression Value)

if argument1 > argument0.suppression
{
    argument0.initSlot.delay += (argument1/argument0.sResist)-argument0.suppression
    argument0.suppression += (argument1/argument0.sResist)-argument0.suppression
}

initiativeSlotReset()