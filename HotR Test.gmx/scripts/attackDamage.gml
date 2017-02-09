#define attackDamage
//Damage script for melee attacks
//attackDamage(Ranged?)

backstab = false
mle = argument0

dge = target.dodge-(max(0,(mSkill-target.mSkill)*2))
triggerOnAttack()

//Facing
if abs(angle_difference(target.cFacing,point_direction(isoTile.x,0,target.isoTile.x,(target.isoTile.y-isoTile.y)*2))) < 180-target.arc
{
    backstab = true    
    createNotification('Backstab!',ico_subterfuge,0)
}

//Check Miss/Dodge
if irandom(99)+1 < missChance
{
    ii = instance_create(x,y-h-height,obj_descriptor)
    ii.text = 'Miss'
    ii.font = fnt_tiny
}
else if irandom(99)+1 < dge and backstab = false
{
    ii = instance_create(target.x,target.y-target.h-target.height,obj_descriptor)
    ii.text = 'Dodge'
    ii.font = fnt_tiny
    
    //Suppress
    if target.evasion != true
    {
        suppress(target,2.0)
    }
}
else
{
//Suppress
suppress(target,2.0)

//Find Attack Speed
s = (3-(dualWield*.5))/((wepSpeed[atkHand]))

//Find Base Attack Strength
p = wepPow[atkHand]+(wepStrMult[atkHand]*atkDPS*s)

//Roll Attack Strength
p *= (1-wepPowRng[atkHand]+random(wepPowRng[atkHand]*2))
p /= (1+dmgMitigation)

a = target.arm

triggerOnHit()

//Check Block
if target.blocks > 0 and backstab = false
{
    if irandom(99)+1 < 100-(max(0,(mSkill-target.mSkill)*2)) 
    {
        a += (p*.5)+target.blockStr
        createNotification('Block!',ico_discipline,0)
        
        if mle = false
        {   
            with(target)
            {
                triggerOnBlock()
            }
        }
    }
    target.blocks -= 1
}

//Armour and Penetration
a = max(0,a-wepPen[atkHand])*.25*(.75+random(.25))

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

if target.life <= 0
{
    triggerOnDown()
    actorDie(target)
}

}

#define suppress
//supress(Supressed Character, Supression Value)


if argument1 > 1 or argument0.bold = false
{
    if argument1 > argument0.suppression
    {
        argument0.initSlot.delay += (argument1/argument0.sResist)-argument0.suppression
        argument0.suppression += (argument1/argument0.sResist)-argument0.suppression
    }
}

initiativeSlotReset()