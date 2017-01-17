//Regenerate vitals and adjust vital frame by frame operations
//upkeep()
//Run in the step event of any actor

//Regenerate life (Life regen measured in life per 5 seconds)
if obj_control.mapTimeOn = true
{
regenTime += lifeRegen/(global.fspd*5)
stm = min(stm+(stmRegen/(global.fspd*60)),stmMax)
    if regenTime >= 1
    {
        if life < lifeMax
        {
        life += 1
        }
        regenTime -= 1
    }
}

//Visualize life changes for healthbar
lifeVis += (life-lifeVis)/(global.fspd/5)



