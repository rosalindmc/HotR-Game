#define meleeAttackRange
//Determine if a character cna be melee attacked
//meleeAttackRange(attacker)

var actor = argument0
var i = 0
var current

with(obj_character)
{
    if team != actor.team
    {
        for(ii = 0; ii < ds_list_size(global.moveTile); ii ++)
        {
        current = ds_list_find_value(global.moveTile, ii)
            if los(1.5,current,sightTile)
            {
                isoTile.overlay = 3
                isoTile.meleeAttack = true
            }
            i += 1
        }    
    }
}

#define embattled
with(obj_character)
{
    if team != argument0.team
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
    if team != actor.team
    {
        if los(global.control.reach,current,isoTile)
        {
            isoTile.overlay = 3
            isoTile.meleeAttack = true
        }
    }    
}
