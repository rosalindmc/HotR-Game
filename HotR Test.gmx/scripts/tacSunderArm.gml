#define tacSunderArm
if wepStrMult[atkHand] != 0
{
    if argument5 = false    //On Proc
    {
        iii = min(target.arm, floor(4+random((argument1*4)-4)))
        target.arm -= iii 
        stm -= 1
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
        target.blocks = max(0,target.blocks-1)
        pMult = .75
        
        stm -= 1
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
    
    stm -= 1
    abilityCD[global.actionNum] = 30/spellCD
}
else
{
    obj_control.tooltipColour[obj_control.tooltipLength] = ltBlue
    obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
    obj_control.tooltipLength += 1     
}
