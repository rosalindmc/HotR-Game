#define mighty
//Mighty attacks from the Strength Tree

//Additional Conditioners
if wepStrMult[atkHand] != 0
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1
        {
            ii = instance_create(x,y-h-height+20,obj_descriptor)
            ii.text = argument0
            
            p += argument2*s
            createNotification('Mighty did '+string(argument2*s)+' Damage',ico_breaker,0) 
            
            applyStatusEffect(daze,target,50,5)
            
            if breaker = true
            {
                target.arm = max(0, target.arm-4) 
                createNotification('Breaker Sundered 1',ico_breaker,0)                
            }
            
            if crunch = true
            {
                p += max((might-target.might)*(.2*s),0)
                
                createNotification('Crunch did '+string(max((might-target.might)*(.2*s),0))+' Damage',ico_breaker,0)            
            }
        }
    }
    else                    //On Tooltip
    {
    
    }
}

#define healthFel
//healthFel(name,%,bonus,high/low,false,tooltip)
//Bonus Damage to High/Low Health foes

//Additional Conditioners
if argument5 = false    //On Proc
{
    if (target.life/target.lifeMax)*100 >= argument1 and argument3 = false
    {
        p += argument2*s
        
        createNotification('Smash did '+string(argument2*s)+' Damage',ico_breaker,0) 
    }
    if (target.life/target.lifeMax)*100 <= argument1 and argument3 = true
    {
        p += argument2*s
                
        createNotification('Slayer did '+string(argument2*s)+' Damage',ico_evasion,0) 
    }
}
else                    //On Tooltip
{

}

#define disableFel
//healthFel(name,%,bonus,high/low,false,tooltip)
//Bonus Damage to High/Low Health foes

//Additional Conditioners
if argument5 = false    //On Proc
{
    if target.missChance != 0
    {
        p += argument2*s
        
        createNotification('Opportunist did '+string(argument2*s)+' Damage',ico_breaker,0) 
    }
}
else                    //On Tooltip
{

}

#define lightningStrike
//Additional Conditioners
if argument5 = false    //On Proc
{
    p += max(((movement+movementBonus)-(target.movement+target.movementBonus))*(argument1*s),0)
    
    createNotification('Lightning Strike did '+string(max(((movement+movementBonus)-(target.movement+target.movementBonus))*(argument1*s),0))+' Damage',ico_breaker,0) 
}
else                    //On Tooltip
{

}
