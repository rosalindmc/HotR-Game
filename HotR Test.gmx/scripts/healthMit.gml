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

#define boldDodge
//boldDodge(name,dodge,false,false,false,tooltip)
//Gain a bonus to dodge chance while bolded

//Additional Conditioners
if argument5 = false    //On Proc
{
    if bold = 1
    {
        other.dge += argument1
    }
}
else                    //On Tooltip
{

}