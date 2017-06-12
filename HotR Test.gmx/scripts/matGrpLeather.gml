#define matGrpLeather
switch(argument0)
{
case 0:
return matHide
break
case 1:
return matLeather
break
case 2:
return matStrongLeather
break
case 3:
return matBeastHide
break
case 4:
return matDragonHide
break
}

#define matHide
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpLeather
    break
    
    case 1: //Name
    return "Hide"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //Leathers can't strike
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //Leathers can't strike
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('-.5 Melee Skill','-.5 Melee Skill',1,c_red)
        }
        else{
            mSkill -= .5
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
    //No Leather Shield's Exist Yet, Add later    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            enc += m*3
            addItemTooltip('+'+string_format(m/2,0,1)+' Cold Resist','+'+string_format(m/2,0,1)+' Cold Resist',1,c_green)
        }
        else{
            enc += m*3
            resist[typeCold] += m/2
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            enc += m*3
            addItemTooltip('+'+string_format(m/2,0,1)+' Cold Resist','+'+string_format(m/2,0,1)+' Cold Resist',1,c_green)
        }
        else{
            enc += m*3
            resist[typeCold] += m/2
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    //Leathers can't strike
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            addItemTooltip('-.5 Ballistic Skill','-.5 Ballistic Skill',1,c_red)
        }
        else{
            rSkill -= .5
            wepColour[i,argument3] = c
        }
    break
}

#define matLeather
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpLeather
    break
    
    case 1: //Name
    return "Leather"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //Leathers can't strike
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //Leathers can't strike
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
    //No Leather Shield's Exist Yet, Add later    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
        }
        else{
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
        }
        else{
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    //Leathers can't strike
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
        }
        else{
            wepColour[i,argument3] = c
        }
    break
}

#define matStrongLeather
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpLeather
    break
    
    case 1: //Name
    return "Strong Leather"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //Leathers can't strike
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //Leathers can't strike
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
    //No Leather Shield's Exist Yet, Add later    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += round(m/2)
        }
        else{
            armMax += round(m/2)
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            arm += round(m/2)
        }
        else{
            armMax += round(m/2)
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    //Leathers can't strike
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            addItemTooltip('+.5 Ballistic Skill','+.5 Ballistic Skill',1,c_green)
        }
        else{
            rSkill += .5
            wepColour[i,argument3] = c
        }
    break
}

#define matBeastHide
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpLeather
    break
    
    case 1: //Name
    return "Beast Hide"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //Leathers can't strike
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //Leathers can't strike
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('+1 Melee Skill','+1 Melee Skill',1,c_green)
        }
        else{
            mSkill += 1
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
    //No Leather Shield's Exist Yet, Add later    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += m
        }
        else{
            armMax += m
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            arm += m
        }
        else{
            armMax += m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    //Leathers can't strike
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            addItemTooltip('+1 Ballistic Skill','+1 Ballistic Skill',1,c_green)
        }
        else{
            rSkill += 1.0
            wepColour[i,argument3] = c
        }
    break
}

#define matDragonHide
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpLeather
    break
    
    case 1: //Name
    return "Dragon Hide"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    //Leathers can't strike
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    //Leathers can't strike
    break
    
    case 4: //Weapon Modifier (Grip)
        if argument2 = true{
            addItemTooltip('+1.5 Melee Skill','+1.5 Melee Skill',1,c_green)
        }
        else{
            mSkill += 1.5
            wepColour[i,argument3] = c
        }
    break
    
    case 5: //Shield Modifier
    //No Leather Shield's Exist Yet, Add later    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += m
            enc -= m*2
            addItemTooltip('+'+string(m)+' Fire Resist','+'+string(m)+' Fire Resist',1,c_green)
        }
        else{
            armMax += m
            enc -= m*2
            resist[typeFire] += m
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            arm += m
            enc -= m*2
            addItemTooltip('+'+string(m)+' Fire Resist','+'+string(m)+' Fire Resist',1,c_green)
        }
        else{
            armMax += m
            enc -= m*2
            resist[typeFire] += m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    //Leathers can't strike
    break
    
    case 9: //Weapon Modifier (Ranged Grip)
        if argument2 = true{
            addItemTooltip('+1.5 Ballistic Skill','+1.5 Ballistic Skill',1,c_green)
        }
        else{
            rSkill += 1.5
            wepColour[i,argument3] = c
        }
    break
}