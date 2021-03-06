#define owMovementRange
//UNUSED

//movementRange(Start Tile, Move, Move Bonus)
//Pathfinding script for movement

//Clear pathing data just in case

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
    for(ii = 0; ii < ds_list_size(current.walk); ii++)
    {
        adjacent = ds_list_find_value(current.walk, ii)
        
        //Add adjacent tile if it is reachable
        if (ds_list_find_index(closed, adjacent) < 0 && adjacent.pathable && adjacent.occupant = noone && adjacent.cost+current.g <= range && adjacent.ground = true) 
        {
            if ds_priority_find_priority(open, adjacent) = 0 || ds_priority_find_priority(open, adjacent) = undefined
            {
                
                adjacent.pathParent = current                
                costMod = diagonalCheck(adjacent, current)
                instance_activate_object(adjacent)
                
                //Calculate g score
                adjacent.g = current.g + (adjacent.cost * costMod)
                
                ds_priority_add(open, adjacent, adjacent.g)     
            }
            else
            {
                //Attempt to reach an already calculated tile faster?
                costMod = diagonalCheck(adjacent, current)
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
    ds_list_add(global.moveTile, current)
    
    colourTiles(current, argument1)
}
ds_list_destroy(closed)

//Make current tile unavailable
start.move = false
start.overlay = 0

#define owAdjacency
//Clear old info to Reupdate
ds_list_clear(walk)

//Check Adjacency
for(ii = 0; ii < ds_list_size(adjacent); ii++)
{
    i = ds_list_find_value(adjacent, ii)
    
    //Same Level
    if (i.h >= h - 15) and (i.h <= h + 15)
    {
        //North Wall Check
        if (wall[0] = noone and i.wall[2] = noone) or (i.isoY >= isoY)
        {
        //East Wall Check
        if (wall[1] = noone and i.wall[3] = noone)  or (i.isoX <= isoX)
        {
        //South Wall Check
        if (wall[2] = noone and i.wall[0] = noone)  or (i.isoY <= isoY)
        {
        //West Wall Check
        if (wall[3] = noone and i.wall[1] = noone)  or (i.isoX >= isoX)
        {
            ds_list_add(walk, i)
        }
        }
        }
        }
    }
}