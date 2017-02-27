#define battleSetup
//Set Up Battle 
//battleSetup()     Will feature variables later

attacker = argument0
defender = argument1
global.battlefield = argument2

instance_deactivate_object(obj_overworldParent)
room_height = 1200
room_width = 2200
global.controlObject = instance_create(0,0,obj_control)

//Temporary Map Gen
combatHillsGen()
combatMudGen()

//Temporary Party Making


//Create Characters TEMP
i = 0

repeat(ds_list_size(attacker.party))
{
    ii = instance_create((room_width/2)+(i*20)-(i*20),10+(i*10)+(i*10),obj_character)
    ii.isoX = i
    ii.isoY = 0
    ii.isoZ = obj_control.map[i,0].heightMap
    ii.cFacing = 180
    ii.facing = 180
    ii.isoTile = obj_control.map[ii.isoX+((ii.isoZ)*obj_control.mapWidth),ii.isoY]
    ii.sightTile = obj_control.map[ii.isoX+((ii.isoZ+1)*obj_control.mapWidth),ii.isoY]
    ii.x = ii.isoTile.x
    ii.y = ii.isoTile.y
    ii.h = ii.isoTile.h
    ii.isoTile.occupant = ii
    
    ii.important = true
    ii.team = 1
    
    if attacker.playerControl = true
    {
        ii.controlScript = controlPlayer
        ii.player = true
    }
    
    ii.owner = ds_list_find_value(attacker.party,i)
    with(ii)
    {
        importCharacter(owner)
    }
    
    i += 1
}

i = 0

repeat(ds_list_size(defender.party))
{
    ii = instance_create((room_width/2)+(i*20)-(i*20),10+(i*10)+(i*10),obj_character)
    ii.isoX = i
    ii.isoY = obj_control.mapWidth-1
    ii.isoZ = obj_control.map[i,ii.isoY].heightMap
    ii.isoTile = obj_control.map[ii.isoX+((ii.isoZ)*obj_control.mapWidth),ii.isoY]
    ii.sightTile = obj_control.map[ii.isoX+((ii.isoZ+1)*obj_control.mapWidth),ii.isoY]
    ii.x = obj_control.map[i,obj_control.mapWidth-1].x
    ii.y = obj_control.map[i,obj_control.mapWidth-1].y
    ii.h = ii.isoTile.h
    ii.isoTile.occupant = ii
    
    ii.team = 2
    ii.important = true
    ii.owner = ds_list_find_value(defender.party,i)
    
    if defender.playerControl = true
    {
        ii.controlScript = controlPlayer
        ii.player = true
    }
    
    with(ii)
    {
        importCharacter(owner)
    }
    
    i += 1
}


#define combatHillsGen
repeat(3)
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
    heightMap = min(floor(heightMap/15),7)
    
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
                        i = instance_create(x+10,y-7,obj_thinwall)
                        i.owner = obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY]
                        i.h = i.owner.h
                        i.facing = 1
                        i.owner.wall[0] = i
                        obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY-1].wall[2] = i
                        instance_activate_object(i.owner)
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
                        i = instance_create(x-10,y-7,obj_thinwall)
                        i.owner = obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY]
                        i.h = i.owner.h
                        i.facing = -1
                        i.owner.wall[3] = i
                        obj_control.map[isoX-1+((iZ)*obj_control.mapWidth),isoY].wall[1] = i
                        instance_activate_object(i.owner)
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
                    i = instance_create(x-10,y+4,obj_thinwall)
                    i.owner = obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY+1]
                    i.h = i.owner.h
                    i.facing = 1
                    wall[2] = i
                    obj_control.map[isoX+((iZ)*obj_control.mapWidth),isoY+1].wall[0] = i
                    instance_activate_object(i.owner)
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
                    i = instance_create(x+10,y+4,obj_thinwall)
                    i.owner = obj_control.map[isoX+1+((iZ)*obj_control.mapWidth),isoY]
                    i.h = i.owner.h
                    i.facing = -1
                    i.owner.wall[1] = i
                    obj_control.map[isoX+1+((iZ)*obj_control.mapWidth),isoY].wall[3] = i
                    instance_activate_object(i.owner)
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

#define combatMudGen
repeat(3)
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