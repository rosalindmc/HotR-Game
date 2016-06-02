//Damage script for melee attacks
//scr_meleeDamage(Bonus Damage, Damage Mult)

//Find Attack Speed
s = (2+(dualwielding*.5))/((wepSpeed[atkHand]))

//Find Base Attack Strength
p = wepPow[atkHand]+((wepStrMult[atkHand]*atkDPS)/s)+argument0

//Roll Attack Strength
p *= argument1 
p *= (1-wepPowRng[atkHand]+(wepPowRng[atkHand]*2))

//Check Parry
//Check Block

//Armour and Penetration
a = max(0,arm-wepPen[atkHand])*.25*(.5+random(.5))

p = max(floor(p+random(.99)-a),0)

//TEMP damage
targetId.life -= p

//Descriptor
ii = instance_create(targetId.x,targetId.y-targetId.h-targetId.height,obj_descriptor)
ii.text = p
ii.font = fnt_tiny

if p = 0
{
ii.text = "No Damage"
}
