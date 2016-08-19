#define scr_movementRange
//scr_movementRange(Start Tile, Move, Move Bonus)
//Pathfinding script for movement

//Clear pathing data just in case
scr_wipeTiles()

//Variables
var open, closed
var start, current, adjacent
var tempG, costMod, range

start = argument0
range = argument1 + argument2

//Data Structures
open = ds_priority_create()
closed = ds_list_create()

//Begin Pathing
ds_priority_add(open, start, start.g)

//Pathing
while(ds_priority_size(open) > 0)
{
    current = ds_priority_delete_min(open)
    ds_list_add(closed, current)
    
    //Step through all neighbours
    for(ii = 0; ii < ds_list_size(current.adjacent); ii++)
    {
        adjacent = ds_list_find_value(current.adjacent, ii)
        
        //Add adjacent tile if it is reachable
        
        if (ds_list_find_index(closed, adjacent) < 0 && adjacent.pathable && adjacent.occupant = noone && adjacent.cost+current.g <= range && adjacent.ground = true) 
        {
            if ds_priority_find_priority(open, adjacent) = 0 || ds_priority_find_priority(open, adjacent) = undefined
            {
                
                adjacent.pathParent = current                
                costMod = scr_diagonalCheck(adjacent, current)
                instance_activate_object(adjacent)
                
                //Calculate g score
                adjacent.g = current.g + (adjacent.cost * costMod)
                
                ds_priority_add(open, adjacent, adjacent.g)     
            }
            else
            {
                //Attempt to reach an already caluclated tile faster?
                costMod = scr_diagonalCheck(adjacent, current)
                tempG = current.g + (adjacent.cost * costMod)
                
                //Check if g is lower
                if (tempG < adjacent.g)
                {
                    adjacent.pathParent = current
                    adjacent.g = tempG
                    ds_priority_change_priority(open, adjacent, adjacent.g)
                }
            }     
        }
    }
}

//Round Down
with(obj_tile)
{
    g = floor(g)
}

//Destroy the open list to prevent memory lost
ds_priority_destroy(open)

for(ii = 0; ii < ds_list_size(closed); ii ++)
{
    current = ds_list_find_value(closed, ii)
    current.move = true
    
    scr_colourTiles(current, argument1)
}
ds_list_destroy(closed)

//Make current tile unavailable
start.move = false
start.overlay = 0

#define scr_diagonalCheck
var adjacent = argument0
var current = argument1
var costMod

//Diagonal Check
if adjacent.isoX != current.isoX && adjacent.isoY != current.isoY
{costMod = 1.5}
else if adjacent.isoZ != current.isoZ && (adjacent.isoX != current.isoX || adjacent.isoY != current.isoY)
{costMod = 2}
else if adjacent.isoZ != current.isoZ
{costMod = 1.5}
else
{costMod = 1}

return(costMod)