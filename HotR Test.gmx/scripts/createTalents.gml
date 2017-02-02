#define createTalents
var ix = 0
var iy = 0
var t = 0
var tt = 0

instance_create(427,80,obj_talHud)
instance_create(477,80,obj_levelUpButton)

repeat(4)
{
    repeat(8)
    {
        i = instance_create(350+(ix*22),102+(iy*22),obj_talentSlot)
        
        if !(global.charSelect.talent[t,tt] = emptyTalent or global.charSelect.talent[t,tt] = emptyBranch)
        {
            with(i)
            {
                script_execute(global.charSelect.talent[t,tt],1,global.charSelect.talent[t,5])
            }
        }
        else if tt = 0
        {
            i.image_index = 0
        }
        else
        {
            i.image_index = 1
        }
        
        tt += 1
        if tt > 3
        {
            tt = 0
            t += 1
        } 
        
        ix += 1
        if ix > 7
        {
            ix = 0
        }
    }
    iy += 1
}

#define destroyTalents
with(obj_talHud)
{
    instance_destroy()
}