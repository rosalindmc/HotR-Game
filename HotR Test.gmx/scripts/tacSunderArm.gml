#define tacSunderArm
if wepStrMult[atkHand] != 0
{
    if argument5 = false    //On Proc
    {
        iii = min(target.arm, floor(4+random((argument1*4)-4)))
        target.arm -= iii
        
        spendStamina(id,1)
        abilityCD[global.actionNum] = 30/spellCD
    }
    else
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' 1 - '+string(argument1)
        obj_control.tooltipLength += 1     
    }
}
   

#define tacGuardBreak
if mle = true
{
    if argument5 = false    //On Proc
    {
        target.blocks = max(0,target.blocks-3)
        pMult = .75
        
        spendStamina(id,1)
        abilityCD[global.actionNum] = 30/spellCD
    }
    else
    {
        obj_control.pMult = .75
        obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
        obj_control.tooltipLength += 1     
    }
}
   

#define tacSlow
if argument5 = false    //On Proc
{
    applyStatusEffect(slow,target,argument1,15*spellDur)
    
    spendStamina(id,1)
    abilityCD[global.actionNum] = 30/spellCD
}
else
{
    obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
    obj_control.tooltipLength += 1     
}
#define tacPreciseStrike
if argument5 = false    //On Proc
{
    spendStamina(id,1)
    abilityCD[global.actionNum] = 30/spellCD
    a = max(0,a-(argument1*4))
    p += argument1
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
if target.mark = true
{
    if argument5 = false    //On Proc
    {
        spendStamina(id,1)
        abilityCD[global.actionNum] = 60/spellCD
        p += argument1
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
if argument5 = false    //On Proc
{
    spendStamina(id,1)
    abilityCD[global.actionNum] = 5/spellCD
    blocks += 1
}
else
{    
    obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
    obj_control.tooltipLength += 1     
}
