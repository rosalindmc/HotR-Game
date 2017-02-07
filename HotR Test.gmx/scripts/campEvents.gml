#define campEvents


#define event1
if argument1 = 0
{
    switch(argument0)
    {
    case 0: speak('GM tools') break
    
    case 1: 
    choice('Misc Scripts 1', 2, true) 
    choice('Misc Scripts 2', 20, true) 
    choice('Checks', 40, true)
    choice('Leave', 6, true) 
    break
    
    case 2: 
    choice('Gain Item', 3, true) 
    choice('Gain Money', 4, true)
    choice('Lose Money', 5, true)
    choice('AMBUSH!',70,true)
    choice('Return', 1, true) 
    break
    
    case 3: gainItem(choose(greatSword,maul),4,emptyMutator,emptyMutator,emptyMutator) skipTo(1) break
    case 4: gainMoney(100) skipTo(1) break
    case 5: loseMoney(100) skipTo(1) break
    case 6: eventEnd() break

    case 20:
    choice('1 Experience', 21, true) 
    choice('10 Experience', 22, true) 
    choice('100 Experience', 23, true) 
    choice('1000 Experience', 24, true) 
    choice('Return', 1, true)
    break

    case 21: gainExperience(1) skipTo(20) break
    case 22: gainExperience(10) skipTo(20) break
    case 23: gainExperience(100) skipTo(20) break
    case 24: gainExperience(1000) skipTo(20) break
    
    case 40:
    choice('Attribute Check', 43, true)
    choice('Talent Check', 60, true)
    choice('Money Check', 41, true)
    choice('Return', 1, true)
    break
    
    case 41:
    choice('[1 Money]', 42, checkMoney(1))
    choice('[10 Money] Ill selll you this thing', 42, checkMoney(10))
    choice('[100 Money]', 42, checkMoney(100))
    choice('[1000 Money]', 42, checkMoney(1000))
    choice('Return', 1, true)
    break
    
    case 42: skipTo(1) break
    
    case 43:
    choice('[Might 10] Be good with strongs', 44, checkMight(10, true))
    choice('[Grace 10] Gymnastics over to her', 46, checkGrace(10, true))
    choice('[Cunning 10] Solve the puzzle', 48, checkCunning(10, true))
    choice('[Will 10] Dont afraid of anything', 50, checkWill(10, true))
    choice('[Fellowship 10] Make a frand', 52, checkFellowship(10, true))
    break
     
    case 44: speak(string(global.eventCharacter.firstName)+' is good with strongs') break   
    case 45: skipTo(1) break
    
    case 46: speak(string(global.eventCharacter.firstName)+' gymnasticses over to her') break   
    case 47: skipTo(1) break
    
    case 48: speak(string(global.eventCharacter.firstName)+' rubiksed the cube') break   
    case 49: skipTo(1) break
    
    case 50: speak(string(global.eventCharacter.firstName)+' dont afraids') break   
    case 51: skipTo(1) break
    
    case 52: speak(string(global.eventCharacter.firstName)+' made a frand') break   
    case 53: skipTo(1) break
    
    case 60: 
    choice('[Strength 1]', 42, checkTalent(treeStrength,true,1))
    choice('[Toughness 1]', 42, checkTalent(treeToughness,true,1))
    choice('[Subterfuge 1]', 42, checkTalent(treeSubterfuge,true,1))
    choice('[Insight 1]', 42, checkTalent(treeInsight,true,1))
    break
    
    case 70:
       event = ambush
       skipTo(0)
    break
    }
}
else
{
    //When an AI runs this script, it should just skip to the end results
}

#define ambush
if argument1 = 0{
    switch(argument0){
        case 0:
            speak ('Your camp has been ambushed by bandits!')
            break
        
        case 1:
            //speak ('Your camp has been ambushed by bandits!')
            i = instance_create(x,y,obj_party)
            i.node = global.activeActor.node
            alarm[11] = 3
            skipTo(2)
            break
        
        case 2:
            speak ('You have defeated the bandits.')
            break
                
    }
}