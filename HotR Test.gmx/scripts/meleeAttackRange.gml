#define meleeAttackRange
//Determine if a character cna be melee attacked
//meleeAttackRange(attacker)

var actor = argument0
var i = 0
var current

with(obj_character)
{
    if team != actor.team and dead = false
    {
        for(ii = 0; ii < ds_list_size(global.moveTile); ii ++)
        {
        current = ds_list_find_value(global.moveTile, ii)
            if los(1.5,current.sightTile,sightTile)
            {
                for(iii = 0; iii < ds_list_size(isoTile.walk); iii ++)
                {
                    if ds_list_find_value(isoTile.walk, iii) = current
                    {
                        isoTile.overlay = 3
                        isoTile.meleeAttack = true
                    }
                }
            }
            i += 1
        }    
    }
}

#define embattled
with(obj_character)
{
    if team != argument0.team and dead = false
    {
        if los(argument0.reach,argument0.sightTile,sightTile)
        {
            return true
        }
    }
}
return false

#define battleAttackRange
//Determine if a character cna be melee attacked
//meleeAttackRange(attacker)

var actor = argument0
var current = global.control.sightTile

with(obj_character)
{
    if team != actor.team and dead = false
    {
        if los(global.control.reach,current,sightTile)
        {
            isoTile.overlay = 3
            isoTile.meleeAttack = true
        }
    }    
}
#define ifAbilityRange
with(obj_character)
{
    if team != argument0.team and dead = false
    {
        if los(argument0.argument1,argument0.sightTile,sightTile)
        {
            return true
        }
    }
}
return false

#define meleeAbilityRange
//Determine if a character can use a melee ability
//meleeAttackRange(attacker)

var actor = argument0
var current = global.control.sightTile

with(obj_character)
{
    if team != actor.team and dead = false
    {
        if los(1.5,current,sightTile)
        {
            isoTile.overlay = 3
            isoTile.meleeAttack = true
        }
    }    
}

#define rangeAbilityRange
//Determine if a character can use a ranged ability
//meleeAttackRange(attacker,range,hostile)

var actor = argument0
var current = global.control.sightTile

with(obj_character)
{
    if argument2 = true
    {
    if team != actor.team and dead = false
    {
        if los(argument1,current,sightTile)
        {
            isoTile.overlay = 3
            isoTile.meleeAttack = true
        }
    }    
    }
    else
    {
    if team = actor.team and dead = false
    {
        if los(argument1,current,sightTile)
        {
            isoTile.overlay = 3
            isoTile.meleeAttack = true
        }
    } 
    }  
}