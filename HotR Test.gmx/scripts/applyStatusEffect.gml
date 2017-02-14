//applyStatusEffect(status,towhom,potency,duration)
for(ss = 0; ss < ds_list_size(argument1.status); ss++)
{
    if ds_list_find_value(argument1.status,ss).effect = argument0
    {
        with(ds_list_find_value(argument1.status,ss))
        {
            ipot = argument2
            idur = argument3
            script_execute(effect,3)
            exit
        }
    }
}

ss = instance_create(x,y-50,obj_status)
ss.effect = argument0
ss.owner = argument1
ss.potency = argument2
ss.duration = argument3

with(ss)
{
    ds_list_add(owner.status,id)
    script_execute(effect,0)
    
    with(owner)
    {
        iC()
    }
}


