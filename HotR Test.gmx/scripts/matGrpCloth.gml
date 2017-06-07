#define matGrpCloth
switch(argument0)
{
case 0:
return matCotton
break
case 1:
return choose(matLinen,matWool)
break
case 2:
return matSilk
break
case 3:
return choose(matSilkweb,matWinterthread)
break
case 4:
return choose(matSilkweb,matWinterthread)
break
}

#define matCotton
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpCloth
    break
    
    case 1: //Name
    return "Cotton"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    
    break
    
    case 4: //Weapon Modifier (Grip)
    
    break
    
    case 5: //Shield Modifier
    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            enc += m
        }
        else{
            enc += m
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
        
    case 8: //Bow Modifier
    
    break
}

#define matLinen
var m = argument1
var c = make_colour_rgb(235,235,235)

switch(argument0)
{
    case 0: //Type
    return matGrpCloth
    break
    
    case 1: //Name
    return "Linen"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    
    break
    
    case 4: //Weapon Modifier (Grip)
    
    break
    
    case 5: //Shield Modifier
    
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
    
    break
}

#define matWool
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpCloth
    break
    
    case 1: //Name
    return "Wool"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    
    break
    
    case 4: //Weapon Modifier (Grip)
    
    break
    
    case 5: //Shield Modifier
    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            enc += m
            addItemTooltip('+'+string_format(m/2,0,1)+' Cold Resist','+'+string_format(m/2,0,1)+' Cold Resist',1,c_green)
        }
        else{
            enc += m
            resist[typeCold] += m/2
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            enc += m
            addItemTooltip('+'+string_format(m/2,0,1)+' Cold Resist','+'+string_format(m/2,0,1)+' Cold Resist',1,c_green)
        }
        else{
            enc += m
            resist[typeCold] += m/2
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    
    break
}

#define matSilk
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpCloth
    break
    
    case 1: //Name
    return "Silk"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    
    break
    
    case 4: //Weapon Modifier (Grip)
    
    break
    
    case 5: //Shield Modifier
    
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
            arm += m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    
    break
}

#define matSilkweb
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpCloth
    break
    
    case 1: //Name
    return "Silkweb"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    
    break
    
    case 4: //Weapon Modifier (Grip)
    
    break
    
    case 5: //Shield Modifier
    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            arm += m
            dodge += m
            }
        else{
            armMax += m
            dodge += m
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            arm += m
        }
        else{
            armMax += m
            dodge += m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    
    break
}

#define matWinterthread
var m = argument1
var c = make_colour_rgb(255,255,255)

switch(argument0)
{
    case 0: //Type
    return matGrpCloth
    break
    
    case 1: //Name
    return "Winterthread"
    break
    
    case 2: //Weapon Modifier (Striking Impact)
    
    break
    
    case 3: //Weapon Modifier (Striking Rending/Piercing)
    
    break
    
    case 4: //Weapon Modifier (Grip)
    
    break
    
    case 5: //Shield Modifier
    
    break
    
    case 6: //Armour Modifier (Protection)
        if argument2 = true{
            dodge += m
            addItemTooltip('+'+string(m)+' Fire Resist','+'+string(m)+' Fire Resist',1,c_green)
            addItemTooltip('+'+string(m)+' Cold Resist','+'+string(m)+' Cold Resist',1,c_green)
        }
        else{
            dodge += m
            resist[typeCold] += m
            resist[typeFire] += m
            armColour[argument3,1] = c
        }
    break
    
    case 7: //Armour Modifier (Adjustment)
        if argument2 = true{
            dodge += m
            addItemTooltip('+'+string(m)+' Fire Resist','+'+string(m)+' Fire Resist',1,c_green)
            addItemTooltip('+'+string(m)+' Cold Resist','+'+string(m)+' Cold Resist',1,c_green)
        }
        else{
            dodge += m
            resist[typeCold] += m
            resist[typeFire] += m
            armColour[argument3,2] = c
        }
    break
        
    case 8: //Bow Modifier
    
    break
}