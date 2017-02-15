#define healthMit
//healthFel(name,%,bonus,high/low,false,tooltip)
//% damage reduction at low health

//Additional Conditioners
if argument5 = false    //On Proc
{
    if (life/lifeMax)*100 >= argument1 and argument3 = false
    {
        other.p *= (100-argument2)/100
    }
    if (life/lifeMax)*100 <= argument1 and argument3 = true
    {
        other.p *= (100-argument2)/100
    }
}
else                    //On Tooltip
{
    if (life/lifeMax)*100 >= argument1 and argument3 = false
    {
        other.p *= (100-argument2)/100
        obj_control.tooltipColour[obj_control.tooltipLength] = c_red
        obj_control.tooltipText[obj_control.tooltipLength] = 'Thick Skin'
        obj_control.tooltipLength += 1    
    }
    if (life/lifeMax)*100 <= argument1 and argument3 = true
    {
        other.p *= (100-argument2)/100
        obj_control.tooltipColour[obj_control.tooltipLength] = c_red
        obj_control.tooltipText[obj_control.tooltipLength] = 'Thick Skin'
        obj_control.tooltipLength += 1
    }
}

#define lifeGain
//lifeGain(name,procChance,life,multProcbyAS,false,tooltip)
//Heal

//Additional Conditioners
if argument5 = false    //On Proc
{
    if argument3 = true
    {
        if 1+irandom(99) >= argument1*s
        {
            iii = min(lifeMax-life,argument2)
            
            if iii != 0
            {
                ii = instance_create(x,y-h-height+20,obj_descriptor)
                ii.text = iii
                ii.font = fnt_tiny
                ii.colour1 = ltBlue
                ii.colour2 = iceBlue
                
                life += iii
            }
        }
    }
    else
    {
        if 1+irandom(99) >= argument1
        {
            iii = min(lifeMax-life,argument2)
            
            if iii != 0
            {
                ii = instance_create(x,y-h-height+20,obj_descriptor)
                ii.text = iii
                ii.font = fnt_tiny
                ii.colour1 = ltBlue
                ii.colour2 = iceBlue
                
                life += iii
            }
        }
    }
}
else                    //On Tooltip
{
    if argument3 = true
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument1*s))+'% Vigour'
        obj_control.tooltipLength += 1
    }
    else
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument1))+'% Vigour'
        obj_control.tooltipLength += 1
    }
}

#define boldDodge
//boldDodge(name,dodge,false,false,false,tooltip)
//Gain a bonus to dodge chance while bolded

//Additional Conditioners
if bold = 1
{
    if argument5 = false    //On Proc
    {
        other.dge += argument1
    }
    else                    //On Tooltip
    {
        other.dge += argument1
            
        obj_control.tooltipColour[obj_control.tooltipLength] = c_red
        obj_control.tooltipText[obj_control.tooltipLength] = 'Evasion'
        obj_control.tooltipLength += 1    
    }
}


#define statusGain
//statusGain(statusEffect,procChance,potency,duration,multProcbyAS,tooltip)
//Apply a Status to the active character

//Additional Conditioners
if argument5 = false    //On Proc
{
    if argument4 = true
    {
        if 1+irandom(99) >= argument1*s
        {
            applyStatusEffect(argument0,id,argument2,argument3)
        }
    }
    else
    {
        if 1+irandom(99) >= argument1
        {
            applyStatusEffect(argument0,id,argument2,argument3)
        }
    }
}
else                    //On Tooltip
{

}

#define statusGive
//statusGive(statusEffect,procChance,potency,duration,multProcbyAS,tooltip)
//Apply a Status to the target

//Additional Conditioners
if argument5 = false    //On Proc
{
    if argument4 = true
    {
        if 1+irandom(99) >= argument1*s
        {
            applyStatusEffect(argument0,target,argument2,argument3)
        }
    }
    else
    {
        if 1+irandom(99) >= argument1
        {
            applyStatusEffect(argument0,target,argument2,argument3)
        }
    }
}
else                    //On Tooltip
{

}