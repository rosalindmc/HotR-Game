//Melee attack Step
//scr_meleeStep

if dualwielding = false
{
    if atkTime > (2.5/wepSpeed[1])
    {
        //Temp Damage
        scr_meleeDamage(0,1)
        atkTime = 0
    }
}
else
{
    if atkTime > (2/((wepSpeed[1]+wepSpeed[2])*.5))
    {
        //Temp Damage
        scr_meleeDamage(0,1)
        atkTime = 0
        atkHand = 3-atkHand
    }

}
