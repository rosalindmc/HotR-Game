#define attackDamage
if target.dead = false
{
    //Damage script
    backstab = false
    mle = argument0
    pMult = 1
    
    global.attackFromTile = isoTile
    
    if mle = true
    {
        mDamage()
    }
    else
    {
        rDamage()
    }
    
    dge = target.dodge-(max(0,(skill-target.mSkill)*3))
    
    //Armour
    a = target.arm
    
    triggerOnAttack(false)
    
    //Facing
    if abs(angle_difference(target.cFacing,point_direction(isoTile.x,0,target.isoTile.x,(target.isoTile.y-isoTile.y)*2))) < 180-target.arc
    {
        backstab = true    
    }
    
    //Check Miss/Dodge
    if irandom(99)+1 < missChance
    {
        ii = popup('Miss',id)
        ii.font = fnt_damage
    }
    else if irandom(99)+1 < dge and backstab = false
    {
        ii = popup('Dodge',target)
        ii.font = fnt_damage

        loseStamina(target,1)
        
        with(target)
        {
            startAnimation(0,animDodge)
        }
        
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
     
    triggerOnHit(false)
    
    //Check Block
    if target.blocks >= 1 and backstab = false and (mle = true or target.hasShield = true)
    {
        if irandom(99)+1 < 100-(max(0,(skill-target.mSkill)*3)) 
        {
            a += p+target.blockStr
            spendStamina(target,p*.05)
            
            ii = popup('Block',target)
            ii.font = fnt_damage
            
            with(target)
            {
                startAnimation(1+other.hasShield,animBlock)
                triggerOnBlock(false)
            }
            
            if mle = true
            {  
                loseStamina(id,p*.05)
                 
                
            }
            else
            {
                a += p*2
            }
        }
        
        if mle = true
        {
            target.blocks -= 1
        }
    }
    
    //Mult Pow
    p *= pMult
    
    //Armour and Penetration
    a = max(0,(a*.25*(.25+random(.75)))-pen)
    
    //Calculate how much damage has been mitigated by armour
    ia = floor(p)-floor(p-a)
    p = max(p-a,0)
    
    if target.immune[type] = false
    {
        if p > 0
        {
            triggerOnWound(false)
            
            with(target)
            {
                if active = true
                {
                    if (hFacing = 1 and x > other.x) or (hFacing = -1 and x < other.x)
                    {startAnimation(0,animFlinchForward)}
                    else
                    {startAnimation(0,animFlinch)}
                }
                
                if owner.canBleed = true
                {
                    part_system_depth(ps2,depth-1)
                    iii = point_direction(x,y,other.x,other.y)
                    part_type_direction(p2,iii-30,iii+30,0,10)
                    part_emitter_region(ps2,em2,bodyX,bodyX,bodyY,bodyY,ps_shape_rectangle,1)
                    part_emitter_burst(ps2,em2,p2,25)
                }
            }
        }
        
        //Stamina
        loseStamina(target,p*.15)    
    
        //Damage
        woundLife(target,id,p,type)
    
        //Armour Descriptor
        if ia > 0
        {
            popup(string(ia)+' Mitigated',target)
            ii.font = fnt_damage
        }
    }


    }
}

#define suppress
//supress(Supressed Character, Supression Value)
if argument1 > 1 or argument0.bold != 1
{
    if argument1 > argument0.suppression and argument0.active = true
    {
        argument0.initSlot.delay += (argument1/argument0.sResist)-argument0.suppression
        argument0.suppression += (argument1/argument0.sResist)-argument0.suppression
    }
}

initiativeSlotReset()

#define mDamage
//Find Attack Speed
s = (1+(3-(dualWield*.5))/((wepSpeed[atkHand])))/5

//Find Base Attack Strength
p = wepPow[atkHand]+(wepStrMult[atkHand]*atkDPS*s)

//Roll Attack Strength
p *= (1-wepPowRng[atkHand]+random(wepPowRng[atkHand]*2))

//Skill
skill = mSkill
pen = wepPen[atkHand]
type = wepType[atkHand]
typeName = damageType(wepType[atkHand])

if target.active = false
{
    skill += 100
}

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
s = (1+(3-(dualWield*.5))/((wepRSpeed[atkHand])))/5

//Find Base Attack Strength
p = wepRPow[atkHand]+(wepRStrMult[atkHand]*atkDPS*s)

//Roll Attack Strength
p *= (1-wepRPowRng[atkHand]+random(wepRPowRng[atkHand]*2))

//Skill
skill = rSkill
pen = wepRPen[atkHand]
type = wepRType[atkHand]
typeName = damageType(wepRType[atkHand])

#define gainMorale
//gainMorale
if bold != 1 and dead = false
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
if bold = 1 and dead = false
{
    iC()
    
    if player = true
    {
        createNotification(string(o.firstName)+' lost Bold',ico_bold,1)
    }
}

bold = max(bold-argument0,0)