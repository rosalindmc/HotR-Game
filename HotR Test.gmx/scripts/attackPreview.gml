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
        rDamage()
        p = wepRPow[atkHand]+(wepRStrMult[atkHand]*atkDPS*s)

        
        //Facing
        if abs(angle_difference(target.cFacing,point_direction(x,0,target.x,(target.y-y)*2))) < 180-target.arc
        {
            backstab = true    
        }
    }

    triggerOnAttack(true)
    dge = target.dodge-(max(0,(skill-target.mSkill)*2))
    
    //Damage Mitigation
    p /= (1+dmgMitigation)

    //Armour
    a = target.arm
    
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
        
    //Armour and Penetration
    a = max(0,a-pen)*.25
    
    p = max(p-a,0)
    pMin = max(pMin-a,0)
    pMax = max(pMax-(a*.75),0)
    
    //Randomize Decimal Damage
    pMin = floor(pMin)
    pMax = ceil(pMax)
        
    triggerOnWound(true)
}

if i.missChance > 0{extraTT += 1}
if i.dge > 0 and i.backstab = false{extraTT += 1}
if target.blocks > 0 and i.backstab = false{extraTT += 1}

draw_set_colour(c_dkgray)
draw_rectangle(ix,iy,ix+120,iy+20+((extraTT+tooltipLength)*14),false)
draw_set_colour(c_ltgray)
draw_rectangle(ix,iy,ix+120,iy+20+((extraTT+tooltipLength)*14),true)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_smallText)

iy += 4  
draw_text(ix+5,iy,string(i.pMin)+' - '+string(i.pMax)+' '+string(i.typeName))
iy += 14  

if i.missChance > 0
{
    draw_text(ix+5,iy,string(i.missChance)+' % Miss')
    iy += 14  
}
if i.dge > 0 and i.backstab = false
{
    draw_text(ix+5,iy,string(floor(i.dge))+' % Dodge')
    iy += 14  
}
if target.blocks > 0 and i.backstab = false
{
    draw_text(ix+5,iy,string(floor(100-(max(0,(i.skill-target.mSkill)*2))))+' % Block '+string(floor((i.p+target.blockStr)/4)))
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
