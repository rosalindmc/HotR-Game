#define wepsklFlurry
//wepsklFlurry(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for bonus attack speed

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            initSlot.delay = max(initSlot.delay-argument2,0)
            
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                    //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepsklRend
//wepsklRend(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for bleed

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            applyStatusEffect(bleed,target,argument2,argument4*spellDur)
            ss.creator = id
            
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                  //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepsklGuard
//wepsklGuard(name,procChance,Bonus,hand,false,tooltip)
//Weapon Skill for blocking

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            blocks += 1        
                
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                  //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepsklBackstab
//wepsklBackstab(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for bonus flank damage

//Additional Conditioners
if backstab = true
{
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            p += argument2*s  
                       
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                    //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}
}

#define wepsklStagger
//wepsklStagger(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for Daze

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            applyStatusEffect(daze,target,50,argument2*spellDur)
                        
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                    //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepsklSkullcrack
//wepsklStagger(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for Stun

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            if target.active = true
            {
                applyStatusEffect(stun,target,50,argument2*spellDur)
            }   
                    
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                        //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepsklCripple
//wepsklCripple(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for cripple

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            applyStatusEffect(cripple,target,argument2,argument4*spellDur)
                        
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                        //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepsklImpale
//wepsklImpale(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for cripple

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            applyStatusEffect(immobilize,target,argument2,argument4*spellDur)
                        
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                        //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepsklShatter
//wepsklShatter(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for bonus attack speed

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            target.arm = max(0,arm-argument2)
                        
            ii = instance_create(x,y-h-height,obj_descriptor)
            ii.text = argument0
            ii.font = fnt_tinyText
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                        //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}