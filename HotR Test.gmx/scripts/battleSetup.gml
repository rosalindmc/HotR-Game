#define battleSetup
//Set Up Battle 
//battleSetup()     Will feature variables later

background_visible[0] = false
global.attacker = argument0
global.defender = argument1
global.battlefield = argument2
global.mapGen = argument3  
global.inCombat = true

global.surfX1 = room_width
global.surfY1 = room_height
global.surfX2 = 0
global.surfY2 = 0

instance_deactivate_object(obj_overworldParent)
global.controlObject = instance_create(0,0,obj_control)

#define combatHillsGen
repeat(6)
{
    with(obj_tile)
    {
        if ground = true
        {
        i = 0
        heightMap *= 2
        
            repeat(ds_list_size(adjacent))
            {
                if ds_list_find_value(adjacent, i).ground = true
                {
                tile = ds_list_find_value(adjacent, i)
                heightMap += tile.heightMap
                
                i += 1
                }
            }
    
        heightMap = heightMap/(i+2)
        }
    }
}

with(obj_tile)
{
    if h = 0
    {
    heightMap = min(floor(heightMap/15),obj_control.mapDepth-2)
    
        if heightMap >= 1
        {
            i = obj_control.map[isoX+((isoZ+heightMap)*obj_control.mapWidth),isoY]
            instance_activate_object(i)
            i.alarm[0] = 2
            i.sprite_index = sprite_index
            i.ground = true
            ground = false
        }
        else
        {
            heightMap = 0
        }
    }
}

with(obj_tile)
{
    if ground = true
    {
        //Check North Wall
        if isoY > 0
        {
            w = obj_control.map[isoX,isoY-1].heightMap-obj_control.map[isoX,isoY].heightMap
            if w > 0
            {
                for(iZ = isoZ; iZ < isoZ+w; iZ ++)
                {
                    i = instance_create(x+9,y-5,obj_thinwall)
                    i.owner = obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY]
                    i.h = i.owner.h
                    i.facing = 1
                    i.owner.wall[0] = i
                    i.image_index = choose(0,1,2)
                    obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY-1].wall[2] = i
                    instance_activate_object(i.owner)
                    
                    if w = 100
                    {
                        i.sprite_index = spr_dirtSlopeWall
                        i.image_index = 1
                        i.owner.hAdj = 7.5
                    }
                }
            }
            
            //Check North Level
            if w < 0
            {
                level[0] = spr_tileBorder
            }
        }
        //Check West Wall
        if isoX > 0
        {
            w = obj_control.map[isoX-1,isoY].heightMap-obj_control.map[isoX,isoY].heightMap
            if w > 0
            {
                for(iZ = isoZ; iZ < isoZ+w; iZ ++)
                {
                    i = instance_create(x-9,y-5,obj_thinwall)
                    i.owner = obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY]
                    i.h = i.owner.h
                    i.facing = -1
                    i.owner.wall[3] = i
                    i.image_index = choose(3,4,5)
                    obj_control.map[isoX-1+((iZ)*obj_control.mapWidth),isoY].wall[1] = i
                    instance_activate_object(i.owner)
                    
                    if w = 100
                    {
                        i.sprite_index = spr_dirtSlopeWall
                        i.image_index = 1
                        i.owner.hAdj = 7.5
                    }
                }
            }
            
            //Check West Level
            if w < 0
            {
                level[3] = spr_tileBorder
            }
        }
        //Check South Wall
        if isoY < obj_control.mapHeight-1
        {
            w = obj_control.map[isoX,isoY+1].heightMap-obj_control.map[isoX,isoY].heightMap
            if w > 0
            {
                for(iZ = isoZ; iZ < isoZ+w; iZ ++)
                {
                    i = instance_create(x-11,y+6,obj_thinwall)
                    i.owner = obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY+1]
                    i.h = i.owner.h
                    i.facing = 1
                    i.image_index = choose(3,4,5)
                    wall[2] = i
                    obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY+1].wall[0] = i
                    instance_activate_object(i.owner)
                    
                    if w = 100
                    {
                        i.sprite_index = spr_dirtSlopeWall
                        i.image_index = 0
                        i.owner.hAdj = 7.5
                    }
                }
            }
            
            //Check South Level
            if w < 0
            {
                level[2] = spr_tileBorder
            }
        }
        
        //Check East Wall
        if isoX < obj_control.mapWidth-1
        {
            w = obj_control.map[isoX+1,isoY].heightMap-obj_control.map[isoX,isoY].heightMap
            if w > 0
            {
                for(iZ = isoZ; iZ < isoZ+w; iZ ++)
                {
                    i = instance_create(x+11,y+6,obj_thinwall)
                    i.owner = obj_control.map[isoX+1+((iZ)*obj_control.mapWidth),isoY]
                    i.h = i.owner.h
                    i.facing = -1
                    i.owner.wall[3] = i
                    i.image_index = choose(0,1,2)
                    obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY].wall[1] = i
                    instance_activate_object(i.owner)
                    
                    if w = 100
                    {
                        i.sprite_index = spr_dirtSlopeWall
                        i.image_index = 0
                        i.owner.hAdj = 7.5
                    }
                }
            }
            
            //Check East Level
            if w < 0
            {
                level[1] = spr_tileBorder
            }
        }
        
        //Check North West Level
        if isoY > 0 and isoX > 0
        {
            w = obj_control.map[isoX-1,isoY-1].heightMap-obj_control.map[isoX,isoY].heightMap
            if w < 0
            {
                level[4] = spr_tileBorder
            }
        }
        
        trimColour = global.battlefield.tile.trimColour
    }
}

//Temp Water
if global.waterLevel != 0
{
    with(obj_tile)
    {
        if obj_control.map[isoX,isoY].heightMap <= isoZ
        {
        if ground = false
        {
            if isoZ = global.waterLevel
            {
                water = 3  
            }
        }
        if isoZ = global.waterLevel -1
            {
                water = 1  
                sprite_index = spr_waterTactics
                wH += 8
                
                global.surfX1 = min(global.surfX1,x-20)
                global.surfY1 = min(global.surfY1,y-18)
                global.surfX2 = max(global.surfX2,x+20)
                global.surfY2 = max(global.surfY2,y+2)
            }
        else if isoZ < global.waterLevel
        {
            water = 2    
        }
        }
    }
}

#define combatMudGen
repeat(2)
{
    with(obj_tile)
    {
        if ground = true
        {
        i = 0
        humidity *= 2
        
            repeat(ds_list_size(adjacent))
            {
                if ds_list_find_value(adjacent, i).ground = true
                {
                tile = ds_list_find_value(adjacent, i)
                humidity += tile.humidity
                
                i += 1
                }
            }
    
        humidity = humidity/(i+2)
        }
    }
}
#define slopeGen
var N = 0
var E = 0
var S = 0
var W = 0
var NE = 0
var NW = 0
var SE = 0
var SW = 0


if isoY > 0
{
    w = obj_control.map[isoX,isoY-1].heightMap-obj_control.map[isoX,isoY].heightMap        
    N = w
    
    if isoX > 0
    {
        w = obj_control.map[isoX-1,isoY-1].heightMap-obj_control.map[isoX,isoY].heightMap
        NW = w
    }
    
    if isoX < obj_control.mapWidth-1
    {
        w = obj_control.map[isoX+1,isoY-1].heightMap-obj_control.map[isoX,isoY].heightMap
        NE = w
    }
}

if isoY < obj_control.mapHeight-1
{
    w = obj_control.map[isoX,isoY+1].heightMap-obj_control.map[isoX,isoY].heightMap        
    S = w
    
    if isoX > 0
    {
        w = obj_control.map[isoX-1,isoY+1].heightMap-obj_control.map[isoX,isoY].heightMap        
        SW = w
    }
    
    if isoX < obj_control.mapWidth-1
    {
        w = obj_control.map[isoX+1,isoY+1].heightMap-obj_control.map[isoX,isoY].heightMap        
        SE = w
    }
}

if isoX > 0
{
    w = obj_control.map[isoX-1,isoY].heightMap-obj_control.map[isoX,isoY].heightMap        
    W = w
}

if isoX < obj_control.mapWidth-1
{
    w = obj_control.map[isoX+1,isoY].heightMap-obj_control.map[isoX,isoY].heightMap        
    E = w
}


if NW = 1
{sprite_index = spr_dirtSlopeTile image_index = 11 hAdj = 7.5}
else if SE = 1
{sprite_index = spr_dirtSlopeTile image_index = 9 hAdj = 7.5}
else if NE = 1
{sprite_index = spr_dirtSlopeTile image_index = 8 hAdj = 7.5}
else if SW = 1
{sprite_index = spr_dirtSlopeTile image_index = 10 hAdj = 7.5}

/*
if NE = true
{image_index = 10}
if SE = true
{image_index = 11}
if SW = true
{image_index = 12}

if N = true
{image_index = 1}
if E = true
{image_index = 2}
if S = true
{image_index = 3}
if W = true
{image_index = 4}