#define mighty
//Mighty attacks from the Strength Tree
temp = argument3
temp = argument4

//Additional Conditioners
if wepStrMult[atkHand] != 0
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1
        {
            p += argument2*s
            
            applyStatusEffect(daze,target,50,5*spellDur,typeForce)
                        
            popup(argument0,id)
            
            if breaker = true
            {
                iii = min(target.arm, floor(4+random(s*20)))
                target.arm -= iii        
            }
            
            if crunch = true
            {
                p += max((might-target.might)*(.2*s),0)       
            }
        }
    }
    else                    //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument1)+'% Mighty'
        obj_control.tooltipLength += 1     
        
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = '  DAZE 5s'
        obj_control.tooltipLength += 1       
        
        if crunch = true
        {
            obj_control.tooltipColour[obj_control.tooltipLength] = green
            obj_control.tooltipText[obj_control.tooltipLength] = '  +'+string_format(max((might-target.might)*(.2*s),0)+(argument2*s),2,1)+' Damage'
            obj_control.tooltipLength += 1             
        }
        else
        {
            obj_control.tooltipColour[obj_control.tooltipLength] = green
            obj_control.tooltipText[obj_control.tooltipLength] = '  +'+string_format(argument2*s,2,1)+' Damage'
            obj_control.tooltipLength += 1     
        }
                    
        if breaker = true
        {
            obj_control.tooltipColour[obj_control.tooltipLength] = green
            obj_control.tooltipText[obj_control.tooltipLength] = '  SUNDER 1 - '+string(floor(s*5))
            obj_control.tooltipLength += 1             
        }
    }
}

#define healthFel
//healthFel(name,%,bonus,high/low,false,tooltip)
//Bonus Damage to High/Low Health foes
temp = argument4

//Additional Conditioners
if (target.life/target.lifeMax)*100 >= argument1 and argument3 = false
{
    if argument5 = false    //On Proc
    {
        p += argument2*s
        
        popup(argument0,id)
    }
    else
    {
        p += argument2*s
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument2*s,2,1)
        obj_control.tooltipLength += 1            
    }
}

if (target.life/target.lifeMax)*100 <= argument1 and argument3 = true
{
    if argument5 = false    //On Proc
    {
        p += argument2*s
        
        popup(argument0,id)
    }
    else       
    {
        p += argument2*s
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument2*s,2,1)
        obj_control.tooltipLength += 1         
    }
}

#define disableFel
//healthFel(name,bonus,false,false,false,tooltip)
//Bonus Damage to debuffed foes
temp = argument3
temp = argument4

//Additional Conditioners
if target.missChance != 0 or target.movement = 0
{
    if argument5 = false    //On Proc
    {
        p += argument1*s   
        
        popup(argument0,id)
    }
    else                    //On Tooltip
    {
        p += argument1*s  
         
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument2*s,2,1)
        obj_control.tooltipLength += 1   
    }
}

#define lightningStrike
//Additional Conditioners
temp = argument2
temp = argument3
temp = argument4

if dodge > dge and mle = true
{
    if argument5 = false    //On Proc
    {
        p += (min(max(dodge,0)-dge,35)*argument1)*s
        
        popup(argument0,id)
    }
    else                    //On Tooltip
    {
        p += (min(max(dodge,0)-dge,35)*argument1)*s
         
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format((min(max(dodge,0)-dge,35)*argument1)*s,2,1)
        obj_control.tooltipLength += 1   
        
    }
}

#define boldDamage
//boldDamage(name,bonus,false,false,false,tooltip)
//Bonus damage while bolded
temp = argument2
temp = argument3
temp = argument4

//Additional Conditioners
if bold = 1 and mle = true
{
    if argument5 = false    //On Proc
    {
        p += argument1*s
        
        popup(argument0,id)
    }
    else                    //On Tooltip
    {
        p += argument1*s
        
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument1*s,2,1)
        obj_control.tooltipLength += 1   
    }
}


#define advantageFel
//advantageFel(name,bonus,false,false,false,tooltip)
//Bonus Damage to helpless foes
temp = argument2
temp = argument3
temp = argument4

//Additional Conditioners
if target.missChance != 0 or backstab = true or target.movement = 0
{
    if argument5 = false    //On Proc
    {
        p += argument1*s   
         
        popup(argument0,id)
    }
    else                    //On Tooltip
    {
        p += argument1*s
        
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument1*s,2,1)
        obj_control.tooltipLength += 1       
    }
}


#define advantageArmourPass
//advantageFel(name,bonus,false,false,false,tooltip)
//Chance to ignore armour on an advantaged attack
temp = argument3
temp = argument4

//Additional Conditioners
if target.missChance != 0 or backstab = true
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1
        {
            a *= 1-argument2
                        
            popup(argument0,id)
        }
    }
    else                    //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define heightFel
//hieghtFel(name,bonus,false,false,false,tooltip)
//Bonus Damage to foes at lower elevation
temp = argument2
temp = argument3
temp = argument4

//Additional Conditioners
var iii = global.attackFromTile

if iii = noone
{
    iii = isoTile
}

if target.h < iii.h
{
    if argument5 = false    //On Proc
    {
        p += argument1*s    
        popup(argument0,id)
    }
    else                    //On Tooltip
    {
        p += argument1*s
        
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(argument1*s,2,1)
        obj_control.tooltipLength += 1       
    }
}


#define northMoraleGain
//northMoraleGain(name,bonus,false,false,false,tooltip)
//Bonus morale on attack
temp = argument0
temp = argument1
temp = argument2
temp = argument3
temp = argument4

if argument5 = false    //On Proc
{
    gainMorale(.1*(s+1+mle))
}
else                    //On Tooltip
{
    //No Tooltip
}


#define halflingMoraleGain
//halflingMoraleGain(name,bonus,false,false,false,tooltip)
//Bonus morale on down
temp = argument0
temp = argument1
temp = argument2
temp = argument3
temp = argument4

if argument5 = false    //On Proc
{
    gainMorale(.4)
}
else                    //On Tooltip
{
    //No Tooltip
}

#define masteryStrike
//Additional Conditioners
temp = argument2
temp = argument3
temp = argument4

if skill > target.mSkill and mle = true
{
    if argument5 = false    //On Proc
    {
        p += ((mSkill-max(target.mSkill,0))*argument1)*s
    }
    else                    //On Tooltip
    {
        p += ((mSkill-max(target.mSkill,0))*argument1)*s
         
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(((mSkill-max(target.mSkill,0))*argument1)*s,2,1)
        obj_control.tooltipLength += 1   
        
    }
}

#define sneakAttack
temp = argument1
temp = argument2
temp = argument3
temp = argument4

if argument5 = false    //On Proc
{
    p += sneakDamage   
    applyStatusEffect(stealth,id,0,0,-1)
    
    if sneakAmbush = true
    {
        applyStatusEffect(celerity,id,1,10,-1)
        popup('Ambush',id)
    }
}
else                    //On Tooltip
{
    if sneakDamage != 0
    {
        p += sneakDamage
    
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)+' '+string_format(sneakDamage,2,1)
        obj_control.tooltipLength += 1
    }
}