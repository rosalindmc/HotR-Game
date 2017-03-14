//Regenerate vitals and adjust vital frame by frame operations
//upkeep()
//Run in the step event of any actor

if dead = false
{
//Regenerate life (Life regen measured in life per 5 seconds)
if obj_control.mapTimeOn = true and global.timeDelay = 0
{
    //Life and Stamina Regeneration
    regenTime += lifeRegen/(global.fspd*5)
    gainStamina(id,stmRegen/(global.fspd*30))
    
    for(i = 0; i < abilityNumber; i++)
    {
        abilityCD[i] = max(0,abilityCD[i]-(1/global.fspd))
    }
    
    if regenTime >= 1
    {
        healLife(id,1)
        regenTime -= 1
    }
            
    if life = lifeMax
    {
        regenTime = 0
    }
        
    if life = lifeMax and active = false and dead = false
    {
        actorRevive()
    }
    
    //Block Generation
    blocks = min(blocks+(blockGen/(global.fspd)),blockMax)
    
    //Boldness
    if suppression = 0
    {
        if bold != 1
        {
            gainMorale((1+bravery)/(global.fspd*10))
        }
    }
    else
    {
        loseMorale(suppression/(global.fspd*5))
    }
}

//Visualize life changes for healthbar
lifeVis += (life-lifeVis)/(global.fspd/5)
}
