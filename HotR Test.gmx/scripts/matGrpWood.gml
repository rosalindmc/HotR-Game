#define matGrpWood
switch(argument0)
{
case 0:
return choose(matElm,matAsh)
break
case 1:
return matMaple
break
case 2:
if argument1 = typeImpact 
{return matOak}
else
{return matYew}
break
case 3:
return choose(matRosewood,matIronwood,matWitchwillow)
break
case 4:
return matFrostAlder
break
}

#define matElm
var m = argument1
var c = make_colour_rgb(185,180,180)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Elm"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
}

#define matAsh
var m = argument1
var c = make_colour_rgb(185,180,180)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Ash"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
}

#define matMaple
var m = argument1
var c = make_colour_rgb(185,180,180)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Maple"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
}

#define matOak
var m = argument1
var c = make_colour_rgb(200,190,160)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Oak"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            dmg *= 1.1
        }
        else{
            wepPow[i] *= 1.1
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockGen /= 1.1
            enc += m
            blockStr += m*3
        }
        else{
            blockGen /= 1.1
            enc += m
            blockStr += m*3
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1.2
            rat /= 1.1
        }
        else{
            wepRPow[i] *= 1.2
            wepRSpeed[i] /= 1.1
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            rng = round(rng*1.1)
        }
        else{
            wepRRange[i] = round(wepRRange[i]*1.3)
            wepColour[i,argument3] = c
        }
    break
}

#define matYew
var m = argument1
var c = make_colour_rgb(255,250,200)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Yew"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('+.5 Melee Skill','+.5 Melee Skill',1,c_red)
        }
        else{
            mSkill += .5
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockGen *= 1.05
            enc -= m
        }
        else{
            blockGen *= 1.05
            enc -= m
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1.1
            rng = round(rng*1.3)
        }
        else{
            wepRPow[i] *= 1+(m*.05)
            wepRRange[i] = round(wepRRange[i]*1.3)
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            addItemTooltip('+.5 Ballistic Skill','+.5 Ballistic Skill',1,c_red)
        }
        else{
            rSkill += .5
            wepColour[i,argument3] = c
        }
    break
}

#define matRosewood
var m = argument1
var c = make_colour_rgb(255,200,180)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Rosewood"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
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
            enc -= m*3
        }
        else{
            blockGen *= 1.1
            enc -= m*3
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1.25
            rng = round(rng*1.5)
            pen += 1
        }
        else{
            wepRPow[i] *= 1.25
            wepRRange[i] = round(wepRRange[i]*1.5)
            wepRPen[i] += 1
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            rat *= 1.1
        }
        else{
            wepRSpeed[i] *= 1.1
            wepColour[i,argument3] = c
        }
    break
}

#define matIronwood
var m = argument1
var c = make_colour_rgb(180,180,180)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Ironwood"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
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
            blockStr += m*3
            enc += m*2
        }
        else{
            blockStr += m*3
            enc += m*2
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1.3
            rat /= 1.2
            rng = round(rng*1.8)
            pen += 3
        }
        else{
            wepRPow[i] *= 1.3
            wepRSpeed[i] /= 1.2
            wepRRange[i] = round(wepRRange[i]*1.8)
            wepRPen[i] += 3
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            rng = round(rng*1.3)
        }
        else{
            wepRRange[i] = round(wepRRange[i]*1.3)
            wepColour[i,argument3] = c
        }
    break
}

#define matWitchwillow
var m = argument1
var c = make_colour_rgb(220,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Witchwillow"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            rat *= 1.2
        }
        else{
            wepSpeed[i] *= 1.2
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockGen *= 1.15
        }
        else{
            blockGen *= 1.15
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1.1
            rat *= 1.2
        }
        else{
            wepRPow[i] *= 1.1
            wepRSpeed[i] *= 1.2
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            addItemTooltip('+1 Ballistic Skill','+1 Ballistic Skill',1,c_red)
        }
        else{
            rSkill += 1.0
            wepColour[i,argument3] = c
        }
    break
}

#define matFrostAlder
var m = argument1
var c = make_colour_rgb(200,200,255)

switch(argument0)
{
    case 0: //Type
    return matGrpWood
    break
    
    case 1: //Name
    return "Frost Alder"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //No Wooden Striking Weapons Yet
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //No Wooden Striking Weapons Yet
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('+1.5 Melee Skill','+1.5 Melee Skill',1,c_red)
        }
        else{
            mSkill += 1.5
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
        if argument2 = true{
            blockStr += m*2
            blockGen *= 1.1
            enc -= m
        }
        else{
            blockStr += m*2
            blockGen *= 1.1
            enc -= m
            wepColour[i,argument3] = c
        }
    break
    
    case 6: //Armour Modifier (Protection)
    //No Wood Armour
    break
    
    case 7: //Armour Modifier (Adjustment)
    //No Wood Armour
    break
        
    case 8: //Ranged Modifier
        if argument2 = true{
            dmg *= 1.15
            rat *= 1.15
            rng = round(rng*2)
            pen += 2
        }
        else{
            wepRPow[i] *= 1.1
            wepRSpeed[i] *= 1.2
            wepRRange[i] = round(wepRRange[i]*2)
            wepRPen[i] += 2
            wepColour[i,argument3] = c
        }
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            addItemTooltip('+1.5 Ballistic Skill','+1.5 Ballistic Skill',1,c_red)
        }
        else{
            rSkill += 1.5
            wepColour[i,argument3] = c
        }
    break
}
