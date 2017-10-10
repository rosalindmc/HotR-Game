#define wepsklFlurry
//wepsklFlurry(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for bonus attack speed
temp = argument4

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            initSlot.delay = max(initSlot.delay-argument2,0)
            
            popup(argument0,id)
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                    //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepsklBleed
//wepsklRend(name,procChance,Bonus,hand,false,tooltip)
//Weapn Skill for bleed

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            applyStatusEffect(bleed,target,argument2,argument4*spellDur,typePhysical)
            ss.creator = id
            
            popup(argument0,id)
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
temp = argument2
temp = argument4

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            blocks += 1        
                
            popup(argument0,id)
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
temp = argument4

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
                       
            popup(argument0,id)
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
temp = argument4

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            applyStatusEffect(daze,target,50,argument2*spellDur,typeForce)
                        
            popup(argument0,id)
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
temp = argument4

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            if target.active = true
            {
                applyStatusEffect(stun,target,50,argument2*spellDur,typeForce)
            }   
                    
            popup(argument0,id)
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
            applyStatusEffect(cripple,target,argument2,argument4*spellDur,typePhysical)
                        
            popup(argument0,id)
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
            applyStatusEffect(immobilize,target,argument2,argument4*spellDur,typePhysical)
                        
            popup(argument0,id)
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
temp = argument4

//Additional Conditioners
if atkHand = argument3 and argument1+((skill-target.mSkill)*5) >= 1
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1+((skill-target.mSkill)*5)
        {
            target.arm = max(0,target.arm-argument2)
                        
            popup(argument0,id)
        }
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                        //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1+((skill-target.mSkill)*5))))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define wepSlashImpact
temp = argument2
temp = argument3
temp = argument4

//Additional Conditioners
if atkHand = argument1
{
if target.immune[type] = true or (target.immune[typeImpact] = false and target.resist[type] > target.resist[typeImpact])
{
    if argument5 = false    //On Proc
    {
        type = typeImpact        
            
        popup(argument0,id)
    }
    else
    {
        type = typeImpact        

        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
        obj_control.tooltipLength += 1    
    }
}
}

#define wepSlashPierce
temp = argument2
temp = argument3
temp = argument4

//Additional Conditioners
if atkHand = argument1
{
if target.immune[type] = true or (target.immune[typeImpact] = false and target.resist[type] > target.resist[typePierce])
{
    if argument5 = false    //On Proc
    {
        type = typePierce        
            
        popup(argument0,id)
    }
    else
    {
        type = typePierce

        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
        obj_control.tooltipLength += 1    
    }
}
}

#define wepSunder
//wepSunder(name,bonus,false,hand,false,tooltip)
temp = argument2
temp = argument4

//Additional Conditioners
if atkHand = argument3
{
    if argument5 = false    //On Proc
    {
        target.arm = max(0,target.arm-argument1)
                    
        popup(argument0,id)
    }
    else if min(100,floor(argument1+((skill-target.mSkill)*5))) > 0                        //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
        obj_control.tooltipLength += 1    
    }
}
