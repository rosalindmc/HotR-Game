#define attackPreview
//Handle Attack and Time Previews in an actions individuals script (c2:)
ix = cHover.x+50
iy = cHover.y-30
i = attacker

tooltipLength = 0
tooltipColour[0] = c_white
tooltipText[0] = 'Something'
extraTT = 0

with(i)
{
    target = other.target
    backstab = false
    mle = argument0
    pMult = 1
    
    if mle = true
    {
        mDamage()
        p = wepPow[atkHand]+(wepStrMult[atkHand]*atkDPS*s)
        pMin = p*(1-wepPowRng[atkHand])
        pMax = p*(1+wepPowRng[atkHand])
        
        //Facing
        if abs(angle_difference(target.cFacing,point_direction(global.attackFromTile.x,0,target.x,(target.y-global.attackFromTile.y)*2))) < 180-target.arc
        {
            backstab = true    
        }
    }
    else
    {
        atkHand = 1+dualWield
        rDamage()
        p = wepRPow[atkHand]+(wepRStrMult[atkHand]*atkDPS*s)
        p/= max(rangeDropoff(id,target)/(wepRRange[atkHand]*metre*1.5),1)
        pMin = p*(1-wepPowRng[atkHand])
        pMax = p*(1+wepPowRng[atkHand])
        
        //Facing
        if abs(angle_difference(target.cFacing,point_direction(x,0,target.x,(target.y-y)*2))) < 180-target.arc
        {
            backstab = true    
        }
    }

    dge = target.dodge-(max(0,(skill-target.mSkill)*3))
    
    //Armour
    a = target.arm
    
    triggerOnAttack(true)

    triggerOnHit(true)
    
    if mle = true
    {
        pMin = p*(1-wepPowRng[atkHand])
        pMax = p*(1+wepPowRng[atkHand])
    }
    else
    {
        pMin = p*(1-wepRPowRng[atkHand])
        pMax = p*(1+wepRPowRng[atkHand])    
    }    
             
    //Block
    if target.blocks >= 1 and backstab = false and floor(100-((skill-target.mSkill)*3)) > 0 and (mle = true or target.hasShield = true)
    {
        bMin = pMin+target.blockStr
        bMax = pMax+target.blockStr
        
        with(target)
        {
            triggerOnBlock(true)   
        }
        
        if mle = false
        {
            bMin += pMin*2
            bMax += pMax*2
        }
    }
     
    //Mult Pow
    p *= pMult
    pMin *= pMult
    pMax *= pMult
    
    //Armour and Penetration
    a = a*.25
    
    if (a*.25)-pen > 0  //Can Penetrate
    {
        pMin /= 1+target.prot
    }
    else if a-pen > 0   //Always Penetrates
    {
        //No Adjustment
    }
    else                //Can't Penetrate
    {
        pMin /= 1+target.prot
        pMax /= 1+target.prot
    }
    
    p = max(p-a,0)
    pMin = max(pMin-max(a-pen,0),0)
    pMax = max(pMax-max((a*.25)-pen,0),0)
    
    //Damage Mitigation
    p /= (1+target.dmgMitigation)
    pMin /= (1+target.dmgMitigation)
    pMax /= (1+target.dmgMitigation)
    
    if target.resist[type] >= 0
    {
        p = (p/(1+(target.resist[type]/5)))
        pMin = (pMin/(1+(target.resist[type]/5)))
        pMax = (pMax/(1+(target.resist[type]/5)))
    }
    else
    {
        p = (p*(1-(target.resist[type]/5)))
        pMin = (pMin*(1-(target.resist[type]/5)))
        pMax = (pMax*(1-(target.resist[type]/5)))
    }
    
    //Randomize Decimal Damage
    pMin = floor(pMin)
    pMax = ceil(pMax)
    
    if target.immune[type] = false and pMax > 0
    {
        triggerOnWound(true)
    }
    
    if target.active = true
    {
        if pMax > target.life
        {
            triggerOnDown(true)
        }
        
        //Suppress
        target.initSlot.delayAdd += max(0,((2.0/target.sResist))-(target.fSuppression+target.suppression))    
        target.fSuppression += max(0,((2.0/target.sResist))-(target.fSuppression+target.suppression))    
    }
}

if i.missChance >= 1{extraTT += 1}
if floor(i.dge) > 0 and i.backstab = false{extraTT += 1}
if target.blocks >= 1 and i.backstab = false and floor(100-((i.skill-target.mSkill)*3)) > 0 and (i.mle = true or target.hasShield = true){extraTT += 1}
if i.mle = false{if max(rangeDropoff(i,target)/(i.wepRRange[i.atkHand]*metre*1.5),1) > 1{extraTT += 1}}

draw_set_colour(c_dkgray)
draw_rectangle(ix,iy,ix+120,iy+20+((extraTT+tooltipLength)*14),false)
draw_set_colour(c_ltgray)
draw_rectangle(ix,iy,ix+120,iy+20+((extraTT+tooltipLength)*14),true)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_smallText)

iy += 4  
if target.immune[i.type] = false
{draw_text(ix+5,iy,string(i.pMin)+' - '+string(i.pMax)+' '+string(i.typeName))}
else
{draw_text(ix+5,iy,'Immune')}
iy += 14

if i.missChance >= 1
{
    draw_text(ix+5,iy,string(floor(i.missChance))+' % Miss')
    iy += 14  
}
if floor(i.dge) > 0 and i.backstab = false
{
    draw_text(ix+5,iy,string(floor(i.dge))+' % Dodge')
    iy += 14  
}
if i.mle = false
{
    if max(rangeDropoff(i,target)/(i.wepRRange[i.atkHand]*metre*1.5),1) > 1
    {
        draw_set_colour(c_red)
        draw_text(ix+5,iy,string_format(100-(100/(rangeDropoff(i,target)/(i.wepRRange[i.atkHand]*metre*1.5))),0,0)+' % Range Dropoff')
        iy += 14  
    }
}
if target.blocks >= 1 and i.backstab = false and floor(100-((i.skill-target.mSkill)*3)) > 0 and (i.mle = true or target.hasShield = true)
{
    draw_text(ix+5,iy,string(floor(100-(max(0,(i.skill-target.mSkill)*3))))+' % Block '+string(floor((i.bMin)/4))+' - '+string(ceil((i.bMax)/4)))
    iy += 14
}
if tooltipLength != 0
{
    for(ii = 0; ii < tooltipLength; ii++)
    {
        draw_set_colour(tooltipColour[ii])
        draw_text(ix+5,iy,tooltipText[ii])
        iy += 14  
    }
}

if i.mle = false
{
    i.atkHand -= i.dualWield
}

#define suppressionPreview
timeReset()

if global.suppPreview = true
{
with(obj_character)
{
    i = 0
    
    if threat = true and active = true
    {
    
    if id != global.nextChar.owner
    {
        t = isoTile
    }
    else
    {
        if argument0 = true
        {
            t = global.attackFromTile
        }
        else
        {
            t = obj_control.cHover
        }
    }
    
    if t = -4
    {
        t = isoTile
    }
    
        repeat(ds_list_size(t.adjacent))
        {
            with(ds_list_find_value(t.adjacent,i))
            {
                if abs(angle_difference(other.cFacing, point_direction(other.isoTile.x,0,x,(y-other.isoTile.y)*2))) <= other.arc
                {
                    if occupant != noone
                    {
                        if other.team != occupant.team and occupant.active = true
                        {
                            ii = occupant
                            //Suppress
                            ii.initSlot.delayAdd += max(0,((1.0/ii.sResist)/(1+ii.threatResist))-(ii.fSuppression+ii.suppression))    
                            ii.fSuppression += max(0,((1.0/ii.sResist)/(1+ii.threatResist))-(ii.fSuppression+ii.suppression))                                        
                        }
                    }
                    else if id = other.t
                    {
                        if other.team != global.nextChar.owner.team and occupant.active = true
                        {
                            ii = global.nextChar.owner
                            //Suppress
                            ii.initSlot.delayAdd += max(0,((1.0/ii.sResist)/(1+ii.threatResist))-(ii.fSuppression+ii.suppression))    
                            ii.fSuppression += max(0,((1.0/ii.sResist)/(1+ii.threatResist))-(ii.fSuppression+ii.suppression))                                       
                        }
                    }
                }
            }
        }
        i += 1
    }
}
}

#define timeReset
with(obj_character)
{
    fSuppression = 0
}
with(obj_initiativeSlot)
{
    delayAdd = 0
}