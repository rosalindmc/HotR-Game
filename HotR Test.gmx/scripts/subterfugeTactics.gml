#define subterfugeTactics
//This script contains the reference for all Subterfuge Tactics
//subterfugeTactics()

#define actHide
//wait(HowtoUse)

var i = global.control

switch(argument0)
{
    //Run 0 when a player selects the command
    case 0:
    applyStatusEffect(stealth,i,1,15*i.spellDur)
    i.abilityCD[global.actionNum] = 15/i.spellCD
    endTurn(1.0)
    break
    
    //Run 1 to execute
    case 1:
    
    break
    
    //Run 2 to draw
    case 2:
    tooltipTitle = 'Hide'
    abilityTT = 'Action#Cooldown '+string_format(15/i.spellCD,0,1)+'##Gain stealth for '+string_format(15*i.spellDur,0,1)+' sec'
    abilityTTLength = 3
    global.testSlot.delayAdd = 1.0
    initiativeSlotAnticipate()
    break
    
    //Run 3 for ai use 
    case 3:
    break
    
    //Run 4 for hotbar check 
    case 4:
    iv.selectable = canHide()
    iv.sprite_index = ico_actHide
    break
}

#define canHide
var i = global.control

with(obj_character)
{
    if team != i.team
    {
        if los(detection,sightTile,i.isoTile)
        {
            return false
        }
    }
}
return true
