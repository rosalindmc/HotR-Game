#define healthMit
//healthMit(name,%,bonus,high/low,false,tooltip)
//% damage reduction at low health

//Additional Conditioners
if argument5 = false    //On Proc
{
    if (life/lifeMax)*100 >= argument1 and argument3 = false
    {
        other.pMult *= (100-argument2)/100
        popup(argument0,id)
    }
    if (life/lifeMax)*100 <= argument1 and argument3 = true
    {
        other.pMult *= (100-argument2)/100
        popup(argument0,id)
    }
}
else                    //On Tooltip
{
    if (life/lifeMax)*100 >= argument1 and argument3 = false
    {
        other.pMult *= (100-argument2)/100
        obj_control.tooltipColour[obj_control.tooltipLength] = c_red
        obj_control.tooltipText[obj_control.tooltipLength] = 'Thick Skin'
        obj_control.tooltipLength += 1    
    }
    if (life/lifeMax)*100 <= argument1 and argument3 = true
    {
        other.pMult *= (100-argument2)/100
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
        if 1+irandom(99) <= argument1*s
        {
            gainStamina(id,argument2)
            healLife(id,argument2)
            popup(argument0,id)
        }
    }
    else
    {
        if 1+irandom(99) <= argument1
        {
            gainStamina(id,argument2)
            healLife(id,argument2)
            popup(argument0,id)
        }
    }
}
else                    //On Tooltip
{
    if argument3 = true
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument1*s))+'% '+string(argument0)
        obj_control.tooltipLength += 1
    }
    else
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument1))+'% '+string(argument0)
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
        popup(argument0,id)
    }
    else                    //On Tooltip
    {
        other.dge += argument1
            
        obj_control.tooltipColour[obj_control.tooltipLength] = c_red
        obj_control.tooltipText[obj_control.tooltipLength] = string(argument0)
        obj_control.tooltipLength += 1    
    }
}


#define statusGain
//statusGain(name,statusEffect,procChance,potency,duration,tooltip)
//Apply a Status to the active character

//Additional Conditioners
if argument5 = false    //On Proc
{
    if 1+irandom(99) <= argument2
    {
        applyStatusEffect(argument1,id,argument3,argument4*spellDur,-1)
        popup(argument0,id)
    }
}
else                    //On Tooltip
{
    obj_control.tooltipColour[obj_control.tooltipLength] = green
    obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument2))+'% '+string(argument0)
    obj_control.tooltipLength += 1
}

#define statusGive
//statusGive(name,statusEffect,procChance,potency,duration,tooltip)
//Apply a Status to the target

//Additional Conditioners
if argument5 = false    //On Proc
{
    if 1+irandom(99) <= argument2
    {
        applyStatusEffect(argument1,target,argument3,argument4*spellDur,-1)
        popup(argument0,id)
    }
}
else                    //On Tooltip
{
    obj_control.tooltipColour[obj_control.tooltipLength] = green
    obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument2))+'% '+string(argument0)
    obj_control.tooltipLength += 1
}

#define cancelDebuff
//cancelDebuff(name,procChance,potency,false,false,tooltip)
//Reduce duration off all negative Status on the character

if argument5 = false    //On Proc
{
    if 1+irandom(99) <= argument1
    {
        iii = false
        
        for(s = 0; s < ds_list_size(status); s++)
        {
            with(ds_list_find_value(status,s))
            {
                if buff = false and showDuration = true
                {
                    other.iii = true
                    duration -= argument2
                }
            }
        }
        
        if iii = true
        {
            popup(argument0,id)
        }
    }
}
else                    //On Tooltip
{
    obj_control.tooltipColour[obj_control.tooltipLength] = green
    obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument1))+'% '+string(argument0)
    obj_control.tooltipLength += 1
}

#define fastAttack
if target.mle = true
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1
        {
            initSlot.delay = max(initSlot.delay-argument2,0)
            
            popup(argument0,id)
        }
    }
    else               //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = green
        obj_control.tooltipText[obj_control.tooltipLength] = string(min(100,floor(argument1)))+' % '+string(argument0)
        obj_control.tooltipLength += 1    
    }
}

#define glancing
//Additional Conditioners
if argument5 = false    //On Proc
{
    if 1+irandom(99) <= argument1
    {
        other.pen = 0
        popup(argument0,id)
    }
}
else                    //On Tooltip
{
    obj_control.tooltipColour[obj_control.tooltipLength] = c_red
    obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument1))+'% '+string(argument0)
    obj_control.tooltipLength += 1
}

#define penMult
//Additional Conditioners
if argument5 = false    //On Proc
{
    other.pen *= 1.5
}
else                    //On Tooltip
{
    other.pen *= 1.5
}
#define meleeBlockStatusGive
//statusGive(name,statusEffect,procChance,potency,duration,tooltip)
//Apply a Status to the target

//Additional Conditioners
if target.mle = true
{
    if argument5 = false    //On Proc
    {
        if argument4 = true
        {
            if 1+irandom(99) <= argument2
            {
                applyStatusEffect(argument1,target,argument3,argument4*spellDur,typeForce)
                popup(argument0,id)
            }
        }
    }
    else                    //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = c_red
        obj_control.tooltipText[obj_control.tooltipLength] = string(floor(argument2))+'% '+string(argument0)
        obj_control.tooltipLength += 1
    }
}

#define smallShield
//statusGive(name,statusEffect,procChance,potency,duration,tooltip)
//Apply a Status to the target

//Additional Conditioners
if target.mle = false
{
    if argument5 = false    //On Proc
    {
        blocks -= 1
    }
    else                    //On Tooltip
    {
        obj_control.tooltipColour[obj_control.tooltipLength] = c_red
        obj_control.tooltipText[obj_control.tooltipLength] = '  Lesser Deflection'
        obj_control.tooltipLength += 1
    }
}

#define largeShield
//statusGive(name,statusEffect,procChance,potency,duration,tooltip)
//Apply a Status to the target

//Additional Conditioners
if target.mle = false
{
    if argument5 = false    //On Proc
    {
        target.a += target.p
    }
    else                    //On Tooltip
    {
        target.bMin += target.pMin
        target.bMax += target.pMax
        obj_control.tooltipColour[obj_control.tooltipLength] = c_red
        obj_control.tooltipText[obj_control.tooltipLength] = '  Greater Deflection'
        obj_control.tooltipLength += 1
    }
}