//applyStatusEffect(status,towhom,potency,duration,type)
//type -1 is unresistable

if argument4 = -1 or argument1.immune[max(argument4,0)] = false
{
    for(ss = 0; ss < ds_list_size(argument1.status); ss++)
    {
        if ds_list_find_value(argument1.status,ss).effect = argument0
        {
            with(ds_list_find_value(argument1.status,ss))
            {
                if argument3 != 0
                {
                    ipot = argument2
                    if argument4 != -1
                    {
                        idur = argument3/(1+argument1.resist[argument4]/5)
                    }
                    else
                    {
                        idur = argument3
                    }
                    script_execute(effect,3)
                }
                else
                {
                    instance_destroy()
                }
                exit
            }
        }
    }
    
    ss = instance_create(x,y-50,obj_status)
    ss.effect = argument0
    ss.owner = argument1
    ss.potency = argument2
    if argument4 != -1
    {
        ss.duration = argument3/(1+argument1.resist[argument4]/5)
    }
    else
    {
        ss.duration = argument3
    }

    with(ss)
    {
        ds_list_add(owner.status,id)
        script_execute(effect,0)
        
        with(owner)
        {
            iC()
        }
    }
}
