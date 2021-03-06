#define tacSunderArm
temp = argument2
temp = argument3
temp = argument4

if wepStrMult[atkHand] != 0
{
    if argument5 = false    //On Proc
    {
        iii = min(target.arm, floor(4+random((argument1*4)-4)))
        target.arm -= iii
        
        spendStamina(id,1)
        abilityCD[global.actionNum] = 30/spellCD
        
        popup(argument0,id)
    }
    else
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' 1 - '+string(argument1)
        obj_control.tooltipLength += 1     
    }
}
   

#define tacGuardBreak
temp = argument1
temp = argument2
temp = argument3
temp = argument4

if mle = true
{
    if argument5 = false    //On Proc
    {
        target.blocks = max(0,target.blocks-3)
        pMult *= .75
        
        spendStamina(id,1)
        abilityCD[global.actionNum] = 30/spellCD
        
        popup(argument0,id)
    }
    else
    {
        pMult *= .75
        obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
        obj_control.tooltipLength += 1     
    }
}
   

#define tacSlow
temp = argument2
temp = argument3
temp = argument4

if argument5 = false    //On Proc
{
    applyStatusEffect(slow,target,argument1,15*spellDur,typePhysical)
    
    spendStamina(id,1)
    abilityCD[global.actionNum] = 30/spellCD
    
    popup(argument0,id)
}
else
{
    obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
    obj_control.tooltipLength += 1     
}

#define tacPreciseStrike
temp = argument2
temp = argument3
temp = argument4

if argument5 = false    //On Proc
{
    spendStamina(id,1)
    abilityCD[global.actionNum] = 30/spellCD
    a = max(0,a-(argument1*4))
    p += argument1
    
    popup(argument0,id)
}
else
{    
    obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument1+min(a/4,(argument1)),0,1)
    obj_control.tooltipLength += 1     
    
    a = max(0,a-(argument1*4))
    p += argument1
}

#define tacExploitWeakness
temp = argument2
temp = argument3
temp = argument4

if target.mark = true
{
    if argument5 = false    //On Proc
    {
        spendStamina(id,1)
        abilityCD[global.actionNum] = 60/spellCD
        p += argument1
        
        popup(argument0,id)
    }
    else
    {    
        obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument1+min(a/4,(argument1)),0,1)
        obj_control.tooltipLength += 1     
        
        p += argument1
    }
}

#define tacGuardedAttack
temp = argument1
temp = argument2
temp = argument3
temp = argument4

if mle = true
{
    if argument5 = false    //On Proc
    {
        spendStamina(id,1)
        abilityCD[global.actionNum] = 5/spellCD
        applyStatusEffect(blockBuff,id,1,10*spellDur,-1)
        
        popup(argument0,id)
    }
    else
    {    
        obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
        obj_control.tooltipLength += 1     
    }
}

#define tacDebilitate
temp = argument2
temp = argument3
temp = argument4

if argument5 = false    //On Proc
{
    if backstab = true
    {
    applyStatusEffect(stun,target,0,argument1*2*spellDur,typePhysical)
    }
    else
    {
    applyStatusEffect(stun,target,0,argument1*spellDur,typePhysical)
    }
    spendStamina(id,1)
    abilityCD[global.actionNum] = 30/spellCD   
    
    popup(argument0,id)
}
else
{    
    obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
    if backstab = true
    {
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument1*2*spellDur,0,1)+' stun'
    target.initSlot.delayAdd += argument1*2*spellDur 
    }
    else
    {
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument1*spellDur,0,1)+' stun'
    target.initSlot.delayAdd += argument1*spellDur
    }
    obj_control.tooltipLength += 1   
}

#define tacFlourish
temp = argument1
temp = argument2
temp = argument3
temp = argument4

if argument5 = false    //On Proc
{
    spendStamina(id,1)
    abilityCD[global.actionNum] = 30/spellCD
    
    with(obj_character)
    {
        if los(1.5,other.sightTile,sightTile) and id != other.target and active = true
        {
            applyStatusEffect(daze,id,50,5*spellDur,typeMental)
        }
    }
    
    popup(argument0,id)
}
else
{    
    obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
    obj_control.tooltipLength += 1     
}

#define tacHeroicStrike
temp = argument1
temp = argument2
temp = argument3
temp = argument4

if argument5 = false    //On Proc
{
    spendStamina(id,1)
    abilityCD[global.actionNum] = 30/spellCD
    
    popup(argument0,id)
}
else
{    
    obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
    obj_control.tooltipLength += 1     
}