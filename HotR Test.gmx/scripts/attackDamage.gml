#define attackDamage
//Damage script for melee attacks
//attackDamage(Ranged?)

backstab = false
mle = argument0
global.attackFromTile = isoTile

if mle = true
{
    mDamage()
}
else
{
    rDamage()
}

dge = target.dodge-(max(0,(skill-target.mSkill)*2))
triggerOnAttack(false)

//Facing
if abs(angle_difference(target.cFacing,point_direction(isoTile.x,0,target.isoTile.x,(target.isoTile.y-isoTile.y)*2))) < 180-target.arc
{
    backstab = true    
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
    target.stm -= 2*(1+(target.enc*.01))
    
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

//Damage Mitigation
p /= (1+dmgMitigation)

//Armour
a = target.arm

triggerOnHit(false)

//Check Block
if target.blocks > 0 and backstab = false
{
    if irandom(99)+1 < 100-(max(0,(skill-target.mSkill)*2)) 
    {
        a += p+target.blockStr
        target.stm -= p*.1
        
        if mle = true
        {  
            stm -= p*.1
             
            with(target)
            {
                triggerOnBlock(false)
            }
        }
    }
    
    if mle = true
    {
        target.blocks -= 1
    }
}

//Armour and Penetration
a = max(0,a-pen)*.25*(.75+random(.25))

//Calculate how much damage has been mitigated by armour
ia = floor(p)-floor(p-a)
p = max(p-a,0)

//Randomize decimal damage (.1 = 10% to do +1)
p = floor(p+random(.99))

if p > 0
{
    triggerOnWound(false)
}

//Descriptor
ii = instance_create(target.x,target.y-target.h-target.height,obj_descriptor)
ii.text = string(p)+' '+string(typeName)
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
target.stm -= p*.5

with(target)
{
    staminaCheck()
}

if target.life <= 0
{
    owner.experience += target.expOnKill
    
    gainMorale(.2)
    checkLevelUp(owner)
    
    triggerOnDown(false)
    actorDie(target)
}

}

#define suppress
//supress(Supressed Character, Supression Value)
if argument1 > 1 or argument0.bold != 1
{
    if argument1 > argument0.suppression
    {
        argument0.initSlot.delay += (argument1/argument0.sResist)-argument0.suppression
        argument0.suppression += (argument1/argument0.sResist)-argument0.suppression
        
        with(argument0)
        {
            loseMorale(argument1*.15)
        }
    }
}

initiativeSlotReset()

#define mDamage
//Find Attack Speed
s = 1+(3-(dualWield*.5))/((wepSpeed[atkHand]))

//Find Base Attack Strength
p = wepPow[atkHand]+(wepStrMult[atkHand]*atkDPS*s)

//Roll Attack Strength
p *= (1-wepPowRng[atkHand]+random(wepPowRng[atkHand]*2))

//Skill
skill = mSkill
pen = wepPen[atkHand]
typeName = wepType[atkHand]

//Height Advantage
if global.attackFromTile.h > target.h
{
    skill += 1
    p*= 1.1
}

if global.attackFromTile.h < target.h
{
    skill -= 1
    p*= .9
}

#define rDamage
//Find Attack Speed
s = 1+(3-(dualWield*.5))/((wepRSpeed[atkHand]))

//Find Base Attack Strength
p = wepRPow[atkHand]+(wepRStrMult[atkHand]*atkDPS*s)

//Roll Attack Strength
p *= (1-wepRPowRng[atkHand]+random(wepRPowRng[atkHand]*2))

//Skill
skill = rSkill
pen = wepRPen[atkHand]
typeName = wepRType[atkHand]
#define gainMorale
//gainMorale
if bold != 1
{
    bold = min(bold+argument0,1)
    
    if bold = 1
    {
        iC()
        
        if player = true
        {
            createNotification(string(o.firstName)+' grew Bold',ico_bold,0)
        }
    }
}


#define loseMorale
//gainMorale
if bold = 1
{
    iC()
    
    if player = true
    {
        createNotification(string(o.firstName)+' lost Bold',ico_bold,1)
    }
}

bold = max(bold-argument0,0)