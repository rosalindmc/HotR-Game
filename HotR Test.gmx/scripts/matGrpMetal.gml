#define matGrpMetal
switch(argument0)
{
case 0:
return matIron
break
case 1:
if argument1 = typeImpact 
{return matWhiteIron}
else
{return matSteel}
break
case 2:
return choose(matTodite,matAddamantine,matMithrel)
break
case 3:
return choose(matTodite,matAddamantine,matMithrel)
break
case 4:
return choose(matAddamantine,matMithrel,matStarmetal)
break
}

#define matIron
var m = argument1+2

switch(argument0)
{
    case 0: //Type
    return matGrpMetal
    break
    
    case 1: //Name
    return "Iron"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
        if argument2 = true{
            dmg *= 1+(m*.03)
            rat /= 1+(m*.05)
        }
        else{
            wepPow[i] *= 1+(m*.03)
            wepSpeed[i] /= 1+(m*.05)
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            dmg /= 1+(m*.03)
            rat /= 1+(m*.05)
            pen = round(pen/(1+(m*.05)))
        }
        else{
            wepPow[i] /= 1+(m*.03)
            wepSpeed[i] /= 1+(m*.05)
            wepPen[i] = round(wepPen[i]/(1+(m*.05)))
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            rat /= 1+(m*.05)
        }
        else{
            wepSpeed[i] /= 1+(m*.05)
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            rat /= 1+(m*.05)
            blockGen /= 1+(m*.05)
            blockStr = round(blockStr/(1+(m*.05)))
        }
        else{
            wepSpeed[i] /= 1+(m*.05)
            blockGen /= 1+(m*.05)
            blockStr = round(blockStr/(1+(m*.05)))
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm -= 2
            enc += round(m*3)
        }
        else{
            armMax -= 2
            enc += round(m*3)
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            enc += round(m*2)
        }
        else{
            enc += round(m*2)
        }
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg /= 1+(m*.05)
            rat /= 1+(m*.05)
            pen = round(pen/(1+(m*.05)))
        }
        else{
            wepRPow[i] /= 1+(m*.05)
            wepRSpeed[i] /= 1+(m*.05)
            wepRPen[i] = round(wepPen[i]/(1+(m*.05)))
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
    //No Metal Ranged Grips
    break
}

#define matSteel
var m = argument1+2

switch(argument0)
{
    case 0: //Type
    return matGrpMetal
    break
    
    case 1: //Name
    return "Steel"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
        if argument2 = true{
            dmg /= 1+(m*.03)
            pen = round(pen/(1+(m*.05)))
        }
        else{
            wepPow[i] /= 1+(m*.03)
            wepPen[i] = round(wepPen[i]/(1+(m*.05)))
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    
    break
    
    case 4: //Weapon Modifier (Grip)
    
    break
    
    case 5: //Shield Modifier
    
    break
    
    case 6: //Armour Modifier (Protection)
    
    break
    
    case 7: //Armour Modifier (Adjustment)
    
    break
        
    case 8: //Ranged Modifier
    
    break
}

#define matWhiteIron
var m = argument1+2

switch(argument0)
{
    case 0: //Type
    return matGrpMetal
    break
    
    case 1: //Name
    return "White Iron"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            dmg /= 1+(m*.03)
            pen = round(pen/(1+(m*.05)))
        }
        else{
            wepPow[i] /= 1+(m*.03)
            wepPen[i] = round(wepPen[i]/(1+(m*.05)))
        }
    break
    
    case 4: //Weapon Modifier (Grip)
    
    break
    
    case 5: //Shield Modifier
    
    break
    
    case 6: //Armour Modifier (Protection)
    
    break
    
    case 7: //Armour Modifier (Adjustment)
    
    break
        
    case 8: //Ranged Modifier
    
    break
}

#define matTodite
var m = argument1+2

switch(argument0)
{
    case 0: //Type
    return matGrpMetal
    break
    
    case 1: //Name
    return "Todite"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
        if argument2 = true{
            dmg *= 1+(m*.03)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepPow[i] *= 1+(m*.03)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            dmg *= 1+(m*.03)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepPow[i] *= 1+(m*.03)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('+ '+string_format(m*.1,0,1)+' Melee Skill','+ '+string_format(m*.1,0,1)+' Melee Skill',0,c_green)
        }
        else{
            mSkill += (m*.1)
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            rat *= 1+(m*.03)
            blockGen *= 1+(m*.03)
            blockStr = round(blockStr*(1+(m*.05)))
        }
        else{
            wepSpeed[i] *= 1+(m*.03)
            blockGen *= 1+(m*.03)
            blockStr = round(blockStr*(1+(m*.05)))
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m/2)
            enc -= round(m*2)
        }
        else{
            armMax += round(m/2)
            enc -= round(m*2)
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
    
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1+(m*.03)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepPow[i] *= 1+(m*.03)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
}

#define matAddamantine
var m = argument1+2

switch(argument0)
{
    case 0: //Type
    return matGrpMetal
    break
    
    case 1: //Name
    return "Addamantine"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
        if argument2 = true{
            dmg *= 1+(m*.1)
            pen = round(pen*(1+(m*.25)))
        }
        else{
            wepPow[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.25)))
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            dmg *= 1+(m*.1)
            pen = round(pen*(1+(m*.25)))
        }
        else{
            wepPow[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.25)))
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            dmg *= 1+(m*.1)
        }
        else{
            wepPow[i] *= 1+(m*.1)
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockStr = round(blockStr*(1+(m*.1)))
        }
        else{
            blockStr = round(blockStr*(1+(m*.1)))
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m)
        }
        else{
            armMax += round(m)
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
    
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1+(m*.1)
            pen = round(pen*(1+(m*.25)))
        }
        else{
            wepPow[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.25)))
        }
    break
}

#define matMithrel
var m = argument1+2

switch(argument0)
{
    case 0: //Type
    return matGrpMetal
    break
    
    case 1: //Name
    return "Mithrel"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
        if argument2 = true{
            rat *= 1+(m*.1)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            rat *= 1+(m*.1)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            rat *= 1+(m*.1)        
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            rat *= 1+(m*.1)
            blockGen *= 1+(m*.1)
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
            blockGen *= 1+(m*.1)
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m/2)
            enc -= round(m*5)
        }
        else{
            armMax += round(m/2)
            enc -= round(m*5)
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
    
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            rat *= 1+(m*.1)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
}

#define matStarmetal
var m = argument1+2

switch(argument0)
{
    case 0: //Type
    return matGrpMetal
    break
    
    case 1: //Name
    return "Star Metal"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
        if argument2 = true{
            rat *= 1+(m*.1)
            dmg *= 1+(m*.1)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
            wepPow[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            rat *= 1+(m*.1)
            dmg *= 1+(m*.1)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
            wepPow[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            rat *= 1+(m*.1)      
            addItemTooltip('+ '+string_format(m*.1,0,1)+' Melee Skill','+ '+string_format(m*.1,0,1)+' Melee Skill',0,c_green)  
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
            mSkill += (m*.1)
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            rat *= 1+(m*.1)
            blockGen *= 1+(m*.1)
            blockStr = round(blockStr*(1+(m*.1)))
        }
        else{
            wepSpeed[i] *= 1+(m*.1)
            blockGen *= 1+(m*.1)
            blockStr = round(blockStr*(1+(m*.1)))
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m)
            enc -= round(m*2)
        }
        else{
            armMax += round(m)
            enc -= round(m*2)
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
    
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            rat *= 1+(m*.1)
            dmg *= 1+(m*.1)
            pen = round(pen*(1+(m*.15)))
        }
        else{
            wepPow[i] *= 1+(m*.1)
            wepPen[i] = round(wepPen[i]*(1+(m*.15)))
        }
    break
}
