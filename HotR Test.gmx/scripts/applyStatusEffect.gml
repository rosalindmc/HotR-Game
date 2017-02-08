//applyStatusEffect(status,towhom,potency,duration)
ss = instance_create(x,y-50,obj_status)
ss.event = argument0
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
