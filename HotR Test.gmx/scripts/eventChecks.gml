#define eventChecks


#define checkMoney
//checkMoney(money)

if global.eventActor.money >= argument0
{
    return true
}
else
{
    return false
} 


/*
i.colour = c_gray
i.alarm[0] = -1

#define checkMight
//checkMight(might, party?)
if argument1 = true
{
    for (var ii = 0; ii < ds_list_size(global.eventActor.party); ii++)
    {
        char = ds_list_find_value(global.eventActor.party,ii)
        
        if char.might >= argument0
        {
            global.eventCharacter = char
            return true
        }
    }
}
else
{
    if global.eventCharacter.might >= argument0
    {
        return true
    }
}
return false

#define checkGrace
//checkGrace(grace, party?)
if argument1 = true
{
    for (var ii = 0; ii < ds_list_size(global.eventActor.party); ii++)
    {
        char = ds_list_find_value(global.eventActor.party,ii)
        
        if char.grace >= argument0
        {
            global.eventCharacter = char
            return true
        }
    }
}
else
{
    if global.eventCharacter.grace >= argument0
    {
        return true
    }
}
return false

#define checkCunning
//checkCunning(cunning, party?)
if argument1 = true
{
    for (var ii = 0; ii < ds_list_size(global.eventActor.party); ii++)
    {
        char = ds_list_find_value(global.eventActor.party,ii)
        
        if char.cunning >= argument0
        {
            global.eventCharacter = char
            return true
        }
    }
}
else
{
    if global.eventCharacter.cunning >= argument0
    {
        return true
    }
}
return false

#define checkWill
//checkWill(will, party?)
if argument1 = true
{
    for (var ii = 0; ii < ds_list_size(global.eventActor.party); ii++)
    {
        char = ds_list_find_value(global.eventActor.party,ii)
        
        if char.will >= argument0
        {
            global.eventCharacter = char
            return true
        }
    }
}
else
{
    if global.eventCharacter.will >= argument0
    {
        return true
    }
}
return false

#define checkFellowship
//checkFellowship(fellowship, party?)
if argument1 = true
{
    for (var ii = 0; ii < ds_list_size(global.eventActor.party); ii++)
    {
        char = ds_list_find_value(global.eventActor.party,ii)
        
        if char.fellowship >= argument0
        {
            global.eventCharacter = char
            return true
        }
    }
}
else
{
    if global.eventCharacter.fellowship >= argument0
    {
        return true
    }
}
return false

#define checkTalent
//checkTalent(talent, level, party?)
if argument1 = true
{
    for (var ii = 0; ii < ds_list_size(global.eventActor.party); ii++)
    {
        char = ds_list_find_value(global.eventActor.party,ii)
        for (var iii = 0; iii < 8; iii++)
        {   
            if char.talent[iii,0] = argument0
            {
                if char.talent[iii,5] >= argument2
                {
                    global.eventCharacter = char
                    return true
                }
            }
        }
    }
}
else
{
    for (var iii = 0; iii < 8; iii++)
    {   
        if global.eventCharacter.talent[iii,0] = argument0
        {
            if global.eventCharacter.talent[iii,5] >= argument2
            {
                return true
            }
        }
    }
}
return false