#define healthMit
//healthFel(name,%,bonus,high/low,false,tooltip)
//% damage reduction at low health

//Additional Conditioners
if argument5 = false    //On Proc
{
    if (life/lifeMax)*100 >= argument1 and argument3 = false
    {
        ii = instance_create(x,y-h-height+20,obj_descriptor)
        ii.text = argument0

        other.p *= (100-argument2)/100
    }
    if (life/lifeMax)*100 <= argument1 and argument3 = true
    {
        ii = instance_create(x,y-h-height+20,obj_descriptor)
        ii.text = argument0

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
    if 1+irandom(99) >= argument1*max(1,(argument3*s))
    {
        ii = instance_create(x,y-h-height+20,argument2)
        ii.text = argument0
        ii.font = fnt_tiny
        ii.colour1 = ltBlue
        ii.colour2 = iceBlue
        
        life += argument2
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
    if 1+irandom(99) >= argument1*max(1,(argument4*s))
    {
        applyStatusEffect(argument0,id,argument2,argument3)
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
    if 1+irandom(99) >= argument1*max(1,(argument4*s))
    {
        applyStatusEffect(argument0,target,argument2,argument3)
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
