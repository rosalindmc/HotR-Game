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
{return choose(matSteel,matSteel,matWhiteIron)}
break
case 2:
return matTodite
break
case 3:
return choose(matAddamantine,matMithrel)
break
case 4:
return matStarmetal
break
}

#define matIron
var m = argument1
var c = make_colour_rgb(185,180,180)

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
            rat /= 1.1
        }
        else{
            wepSpeed[i] /= 1.1
            wepColour[i,argument3] = c
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            dmg /= 1.1
            rat /= 1.1
            pen = max(0,pen-1)
        }
        else{
            wepPow[i] /= 1.1
            wepSpeed[i] /= 1.1
            wepPen[i] = max(0,wepPen[i]-1)
            wepColour[i,argument3] = c
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            rat /= 1.05
            dmg /= 1.05
            addItemTooltip('Heavier','Heavier#Increased stamina cost to attack',3,c_red)
        }
        else{
            wepSpeed[i] /= 1.05
            wepPow[i] /= 1.05
            wepStamina[i] += .1
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockGen /= 1.05
            blockStr = max(0,blockStr-m)
        }
        else{
            blockGen /= 1.05
            blockStr = max(0,blockStr-m)
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm -= m
            enc += m*2
        }
        else{
            armMax -= m
            enc += m*2
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            enc += m
        }
        else{
            enc += m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg /= 1.1
            rat /= 1.05
            rng = round(rng/1.2)
            pen = max(0,pen-1)
        }
        else{
            wepRPow[i] /= 1.1
            wepRSpeed[i] /= 1.05
            wepRRange[i] = round(wepRRange[i]/1.2)
            wepRPen[i] = max(0,wepPen[i]-1)
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
    //No Metal Ranged Grips
    break
}

#define matSteel
var m = argument1
var c = make_colour_rgb(240,240,240)

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
            dmg /= 1.1
            pen = max(0,pen-1)
        }
        else{
            wepPow[i] /= 1.1
            wepPen[i] = max(0,wepPen[i]-1)
            wepColour[i,argument3] = c
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = false{
            wepColour[i,argument3] = c
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = false{
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = false{
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = false{
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = false{
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Ranged Modifier
        if argument2 = false{
            wepColour[i,argument3] = c
        }
    break
}

#define matWhiteIron
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpMetal
    break
    
    case 1: //Name
    return "White Iron"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
        if argument2 = false{
            wepColour[i,argument3] = c
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            dmg *= 1.1
            rat /= 1.1
        }
        else{
            wepPow[i] *= 1.1
            wepSpeed[i] /= 1.1
            wepColour[i,argument3] = c
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = false{
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockStr += m
            enc += m
        }
        else{
            blockStr += m
            enc += m
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = false{
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = false{
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Ranged Modifier
        if argument2 = false{
            wepColour[i,argument3] = c
        }
    break
}

#define matTodite
var m = argument1
var c = make_colour_rgb(140,200,200)

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
            dmg *= 1.05
            rat *= 1.05
            pen += 1
        }
        else{
            wepPow[i] *= 1.05
            wepSpeed[i] *= 1.05
            wepPen[i] += 1
            wepColour[i,argument3] = c
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            dmg *= 1.05
            rat *= 1.05
            pen += 1
        }
        else{
            wepPow[i] *= 1.05
            wepSpeed[i] *= 1.05
            wepPen[i] += 1
            wepColour[i,argument3] = c
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('+.5 Melee Skill','+.5 Melee Skill',1,c_green)
        }
        else{
            mSkill += .5
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockStr += m
        }
        else{
            blockStr += m
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m/2)
            enc -= m*2
        }
        else{
            armMax += round(m/2)
            enc -= m*2
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            enc -= m
        }
        else{
            enc -= m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1.05
            rat *= 1.05
            pen += 1
        }
        else{
            wepRPow[i] *= 1.05
            wepRSpeed[i] *= 1.05
            wepRPen[i] += 1
            wepColour[i,argument3] = c
        }
    break
}

#define matAddamantine
var m = argument1
var c = make_colour_rgb(190,220,190)


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
            dmg *= 1.4
            rat /= 1.05
            pen += 3
        }
        else{
            wepPow[i] *= 1.4
            wepSpeed[i] /= 1.05
            wepPen[i] += 3
            wepColour[i,argument3] = c
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            dmg *= 1.3
            pen += 3
        }
        else{
            wepPow[i] *= 1+(m*.1)
            wepPen[i] += 3
            wepColour[i,argument3] = c
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('Mighty','Mighty# This weapon is 10 % more effected by Might and uses 10 % more stamina to attack',4,green)
        }
        else{
            wepStrMult[i] += .1
            wepStamina[i] += .1
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockStr += m*2
            enc += m
        }
        else{
            blockStr += m*2
            enc += m
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m)
            enc += m*2
            dodge -= m
        }
        else{
            armMax += round(m)
            enc += m*2
            dodge += m
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            arm += round(m)
            enc += m
        }
        else{
            armMax += round(m)
            enc += m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1.3
            rng = round(rng*1.2)
            pen += 3
        }
        else{
            wepRPow[i] *= 1.3
            wepRRange[i] = round(wepRRange[i]*1.2)
            wepRPen[i] += 3
            wepColour[i,argument3] = c
        }
    break
}

#define matMithrel
var m = argument1
var c = make_colour_rgb(255,190,255)

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
            rat *= 1.2
        }
        else{
            wepSpeed[i] *= 1.2
            wepColour[i,argument3] = c
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            rat *= 1.2
            pen += 2
        }
        else{
            wepSpeed[i] *= 1.2
            wepPen[i] += 2
            wepColour[i,argument3] = c
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('Lighter','Lighter#Reduced stamina cost to attack',3,c_green)   
        }
        else{
            wepStamina[i] -= .1
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockGen *= 1.1
            blockStr += m
        }
        else{
            blockGen *= 1.1
            blockStr += m
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m/2)
            enc -= round(m*4)
            dodge += m
        }
        else{
            armMax += round(m/2)
            enc -= round(m*4)
            dodge += m
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            enc -= round(m*3)
        }
        else{
            enc -= round(m*3)
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            rat *= 1.2
            rng = round(rng*1.4)
            pen += 2
        }
        else{
            wepRSpeed[i] *= 1.2
            wepRRange[i] = round(wepRRange[i]*1.4)
            wepRPen[i] += 2
            wepColour[i,argument3] = c
        }
    break
}

#define matStarmetal
var m = argument1
var c = make_colour_rgb(255,220,200)

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
            rat *= 1.1
            dmg *= 1.2
            pen += 4
        }
        else{
            wepSpeed[i] *= 1.2
            wepPow[i] *= 1.2
            wepPen[i] += 4
            wepColour[i,argument3] = c
        }
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
        if argument2 = true{
            rat *= 1.2
            dmg *= 1.2
            pen += 4
        }
        else{
            wepSpeed[i] *= 1.2
            wepPow[i] *= 1.2
            wepPen[i] += 4
            wepColour[i,argument3] = c
        }
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            rat *= 1.1   
            addItemTooltip('+1 Melee Skill','+1 Melee Skill',1,c_green)  
        }
        else{
            wepSpeed[i] *= 1.1
            mSkill += 1
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockGen *= 1.05
            blockStr += m
            addItemTooltip('+'+string_format(m/2,0,1)+' Fire Resist','+'+string_format(m/2,0,1)+' Fire Resist',1,c_green)  
        }
        else{
            blockGen *= 1.05
            blockStr += m
            resist[typeFire] += m/2
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m)
            enc -= round(m*2)
            addItemTooltip('+'+string(m)+' Fire Resist','+'+string(m)+' Fire Resist',1,c_green) 
        }
        else{
            armMax += round(m)
            enc -= round(m*2)
            resist[typeFire] += m
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            enc -= round(m*3)
            addItemTooltip('+'+string(m)+' Fire Resist','+'+string(m)+' Fire Resist',1,c_green) 
        }
        else{
            enc -= round(m*3)
            resist[typeFire] += m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            rat *= 1.2
            dmg *= 1.2
            rng = round(rng*1.3)
            pen += 4
        }
        else{
            wepRPow[i] *= 1.2
            wepRSpeed[i] *= 1.2
            wepRRange[i] = round(wepRRange[i]*1.3)
            wepRPen[i] += 4
            wepColour[i,argument3] = c
        }
    break
}
