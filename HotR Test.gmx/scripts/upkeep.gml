//Regenerate vitals and adjust vital frame by frame operations
//upkeep()
//Run in the step event of any actor

//Regenerate life (Life regen measured in life per 5 seconds)
if obj_control.mapTimeOn = true and global.timeDelay = 0
{
    //Life and Stamina Regeneration
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
    
    //Block Generation
    blocks = min(blocks+(blockGen/(global.fspd)),blockMax)
    
    //Boldness
    if suppression = 0
    {
        bold = min(bold+(1/(global.fspd*10)),1)
    }
    else
    {
        bold = 0
    }
}

//Visualize life changes for healthbar
lifeVis += (life-lifeVis)/(global.fspd/5)
