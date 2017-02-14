#define mighty
//Mighty attacks from the Strength Tree

//Additional Conditioners
if wepStrMult[atkHand] != 0
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1
        {
            p += argument2*(s+1)
            
            applyStatusEffect(daze,target,50,5)
            
            if breaker = true
            {
                iii = min(target.arm, floor(4+random(s*4)))
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
            obj_control.tooltipText[obj_control.tooltipLength] = '  +'+string_format(max((might-target.might)*(.2*s),0)+(argument2*(s+1)),2,1)+' Damage'
            obj_control.tooltipLength += 1             
        }
        else
        {
            obj_control.tooltipColour[obj_control.tooltipLength] = green
            obj_control.tooltipText[obj_control.tooltipLength] = '  +'+string_format(argument2*(s+1),2,1)+' Damage'
            obj_control.tooltipLength += 1     
        }
                    
        if breaker = true
        {
            obj_control.tooltipColour[obj_control.tooltipLength] = green
            obj_control.tooltipText[obj_control.tooltipLength] = '  SUNDER 1 - '+string(floor(s+1))
            obj_control.tooltipLength += 1             
        }
    }
}

#define healthFel
//healthFel(name,%,bonus,high/low,false,tooltip)
//Bonus Damage to High/Low Health foes

//Additional Conditioners
if (target.life/target.lifeMax)*100 >= argument1 and argument3 = false
{
    if argument5 = false    //On Proc
    {
        p += argument2*(s+1)
    }
    else
    {
        p += argument2*(s+1)
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = 'Smash '+string_format(argument2*(s+1),2,1)
        obj_control.tooltipLength += 1            
    }
}

if (target.life/target.lifeMax)*100 <= argument1 and argument3 = true
{
    if argument5 = false    //On Proc
    {
        p += argument2*(s+1)
    }
    else       
    {
        p += argument2*(s+1)
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = 'Slayer '+string_format(argument2*(s+1),2,1)
        obj_control.tooltipLength += 1         
    }
}

#define disableFel
//healthFel(name,bonus,false,false,false,tooltip)
//Bonus Damage to High/Low Health foes

//Additional Conditioners
if target.missChance != 0
{
    if argument5 = false    //On Proc
    {
        p += argument1*(s+1)   
        //createNotification('Opportunist did '+string(argument1*s)+' Damage',ico_breaker,0) 
    }
    else                    //On Tooltip
    {
        p += argument1*(s+1)  
         
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = 'Opportunist '+string_format(argument2*(s+1),2,1)
        obj_control.tooltipLength += 1   
    }
}

#define lightningStrike
//Additional Conditioners

if dodge > dge
{
    if argument5 = false    //On Proc
    {
        p *= 1+((dodge-dge)*.01)
    }
    else                    //On Tooltip
    {
        p *= 1+((dodge-dge)*.01)
         
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = 'Lightning Strike '+string_format(dodge-dge,2,1)+'%'
        obj_control.tooltipLength += 1   
    }
}

#define boldDamage
//boldDamage(name,bonus,false,false,false,tooltip)
//Bonus damage while bolded

//Additional Conditioners
if argument5 = false    //On Proc
{
    if bold = 1 and mle = true
    {
        p += argument1*(s+1)
        
        //createNotification('Momentum did '+string(argument1*s)+' Damage',ico_evasion,0) 
    }
}
else                    //On Tooltip
{

}

#define advantageFel
//advantageFel(name,bonus,false,false,false,tooltip)
//Bonus Damage to High/Low Health foes

//Additional Conditioners
if argument5 = false    //On Proc
{
    if target.missChance != 0 or backstab = true
    {
        p += argument1*(s+1)
        
        //createNotification('Insight did '+string(argument1*s)+' Damage',ico_breaker,0) 
    }
}
else                    //On Tooltip
{

}

#define advantageArmourPass
//advantageFel(name,bonus,false,false,false,tooltip)
//Bonus Damage to High/Low Health foes

//Additional Conditioners
if argument5 = false    //On Proc
{
    if target.missChance != 0 or backstab = true
    {
        if 1+irandom(99) >= argument1
        {
            a *= 1-argument2
        }
    }
}
else                    //On Tooltip
{

}