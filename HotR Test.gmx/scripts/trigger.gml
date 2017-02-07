#define trigger
/*
trig = argument0

for(t = 0; t < ds_list_size(trig); t++)
{
    script_execute(ds_list_find_value(trig,t),argument1)
}

#define triggerOnHit
if onHitSize > 0
{
    for(t = 0; t < onHitSize; t++)
    {
        script_execute(onHit[t,0],onHit[t,1],onHit[t,2],onHit[t,3],onHit[t,4],onHit[t,5],false)
    }
}
