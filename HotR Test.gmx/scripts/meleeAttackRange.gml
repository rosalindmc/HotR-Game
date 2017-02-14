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
            if los(1,current,isoTile)
            {
                //current.overlay = 5
                isoTile.overlay = 3
                isoTile.meleeAttack = true
            }
            i += 1
        }    
    }
}
