#define movementRange
//movementRange(Start Tile, Move, Move Bonus)
//Pathfinding script for movement

//Clear pathing data just in case
wipeTiles()
zoneOfControl()

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
        if (ds_list_find_index(closed, adjacent) < 0 && adjacent.pathable && adjacent.occupant = noone && adjacent.cost+current.g <= range && adjacent.ground = true && (current.zoneControl = false or ignoreZoC = true)) 
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
start.zoneControl = false

#define diagonalCheck
var adjacent = argument0
var current = argument1
var costMod

//Diagonal Check
if adjacent.isoZ != current.isoZ && adjacent.isoX != current.isoX && adjacent.isoY != current.isoY
{costMod = 3.5}
else if adjacent.isoX != current.isoX && adjacent.isoY != current.isoY
{costMod = 1.5}
else
{costMod = 1}

//Height Check      h0 tile h10 stairs h15 step h20 stairs+
if adjacent.h > current.h+5+current.hAdj
{costMod *= 1+((adjacent.h-current.h-5-current.hAdj)*.1)}

return(costMod)

#define adjacency
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
        if (wall[0] = noone and i.wall[2] = noone) or (i.isoY >= isoY) or (i.isoZ != isoZ)
        {
        //East Wall Check
        if (wall[1] = noone and i.wall[3] = noone)  or (i.isoX <= isoX) or (i.isoZ != isoZ)
        {
        //South Wall Check
        if (wall[2] = noone and i.wall[0] = noone)  or (i.isoY <= isoY) or (i.isoZ != isoZ)
        {
        //West Wall Check
        if (wall[3] = noone and i.wall[1] = noone)  or (i.isoX >= isoX) or (i.isoZ != isoZ)
        {
            ds_list_add(walk, i)
        }
        }
        }
        }
    }
}



#define checkSpace
//Check Space
var tx = isoX;
var ty = isoY;
var tz = isoZ;

//North
space[0] = 0
repeat(min(4,ty+1))
{
    if obj_control.map[tx+(obj_control.mapWidth*isoZ),ty].wall[0] = noone
    {
        space[0] += 1
        ty -= 1
    }
    else
    {
        break
    }
}
tx = isoX
ty = isoY

//East
space[1] = 0
repeat(min(4,obj_control.mapWidth-tx-1))
{
    if obj_control.map[tx+(obj_control.mapWidth*isoZ),ty].wall[1] = noone
    {
        space[1] += 1
        tx += 1
    }
    else
    {
        break
    }
}
tx = isoX
ty = isoY

//South
space[2] = 0
repeat(min(4,obj_control.mapHeight-ty-1))
{
    if obj_control.map[tx+(obj_control.mapWidth*isoZ),ty].wall[2] = noone
    {
        space[2] += 1
        ty += 1
    }
    else
    {
        break
    }
}
tx = isoX
ty = isoY

//West
space[3] = 0
repeat(min(4,tx+1))
{
    if obj_control.map[tx+(obj_control.mapWidth*isoZ),ty].wall[3] = noone
    {
        space[3] += 1
        tx -= 1
    }
    else
    {
        break
    }
}

tx = isoX
ty = isoY
tz = isoZ+1

//Up
space[4] = 1
repeat(min(4,obj_control.mapDepth-tz-1))
{
    if obj_control.map[tx+(obj_control.mapWidth*tz),ty].ground = false
    {
        space[4] += 1
        tz += 1
    }
    else
    {
        break
    }
}

if water = 1
{
    for(i=0;i<4;i++)
    {
    if space[i] = 0
    {
        level[i] = spr_waveBorder
        trimColour = ltBlue
    }
    }
}



#define zoneOfControl
//zoneOfControl()
//All Enemies make tiles in their zone of control flagged as zoneControl

with(obj_character)
{
    if team != global.control.team
    {
        if threat = true and active = true
        {
            i = 0
            
            repeat(ds_list_size(isoTile.adjacent))
            {
                with(ds_list_find_value(isoTile.adjacent,i))
                {
                    if abs(angle_difference(other.cFacing, point_direction(other.isoTile.x,0,x,(y-other.isoTile.y)*2))) <= other.arc
                    {
                        if los(1000,id,other.isoTile)
                        {
                            zoneControl = true
                        }
                    }
                }
                i += 1
            }
        }
    }
}