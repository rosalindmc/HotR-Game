//Mighty attacks from the Strength Tree

//Additional Conditioners
if wepStrMult[atkHand] != 0
{
    if argument5 = false    //On Proc
    {
        if 1+irandom(99) <= argument1
        {
            ii = instance_create(target.x,target.y-target.h-target.height+20,obj_descriptor)
            ii.text = argument0
        }
    }
    else                    //On Tooltip
    {
    
    }
}
