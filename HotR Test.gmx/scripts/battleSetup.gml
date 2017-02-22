#define battleSetup
//Set Up Battle 
//battleSetup()     Will feature variables later

attacker = argument0
defender = argument1
global.battlefield = argument2

instance_deactivate_object(obj_overworldParent)
room_height = 1200
room_width = 2200
instance_create(0,0,obj_control)

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
    ii.isoZ = floor(obj_control.map[i,0].heightMap/15)
    ii.cFacing = 180
    ii.facing = 180
    ii.isoTile = obj_control.map[ii.isoX+((ii.isoZ)*obj_control.mapWidth),ii.isoY]
    ii.x = ii.isoTile.x
    ii.y = ii.isoTile.y
    ii.h = ii.isoTile.h
    ii.isoTile.occupant = ii
    
    ii.important = true
    ii.team = 1
    ii.controlScript = controlPlayer
    ii.player = true
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
    ii.isoZ = floor(obj_control.map[i,ii.isoY].heightMap/15)
    ii.isoTile = obj_control.map[ii.isoX+((ii.isoZ)*obj_control.mapWidth),ii.isoY]
    ii.x = obj_control.map[i,obj_control.mapWidth-1].x
    ii.y = obj_control.map[i,obj_control.mapWidth-1].y
    ii.h = ii.isoTile.h
    ii.isoTile.occupant = ii
    
    ii.team = 2
    ii.important = true
    ii.owner = ds_list_find_value(defender.party,i)
    with(ii)
    {
        importCharacter(owner)
    }
    
    i += 1
}


#define combatHillsGen
repeat(2)
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
    
        heightMap = heightMap/(ds_list_size(adjacent)+2)
        }
    }
}

with(obj_tile)
{
    if h = 0
    {
    if heightMap >= 75
    {
        i = obj_control.map[isoX+((isoZ+5)*obj_control.mapWidth),isoY]
        instance_activate_object(i)
        i.alarm[0] = 2
        i.sprite_index = sprite_index
        i.ground = true
        ground = false
    }
    else if heightMap >= 60
    {
        i = obj_control.map[isoX+((isoZ+4)*obj_control.mapWidth),isoY]
        instance_activate_object(i)
        i.alarm[0] = 2
        i.sprite_index = sprite_index
        i.ground = true
        ground = false
    }
    else if heightMap >= 45
    {
        i = obj_control.map[isoX+((isoZ+3)*obj_control.mapWidth),isoY]
        instance_activate_object(i)
        i.alarm[0] = 2
        i.sprite_index = sprite_index
        i.ground = true
        ground = false
    }
    else if heightMap >= 30
    {
        i = obj_control.map[isoX+((isoZ+2)*obj_control.mapWidth),isoY]
        instance_activate_object(i)
        i.alarm[0] = 2
        i.sprite_index = sprite_index
        i.ground = true
        ground = false
    }
    else if heightMap >= 15
    {
        i = obj_control.map[isoX+((isoZ+1)*obj_control.mapWidth),isoY]
        instance_activate_object(i)
        i.alarm[0] = 2
        i.sprite_index = sprite_index
        i.ground = true
        ground = false
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
            if obj_control.map[isoX+((isoZ+1)*obj_control.mapWidth),isoY-1].ground = true
            {
                i = instance_create(x+10,y-7,obj_thinwall)
                i.owner = id
                i.h = h
                i.facing = 1
                wall[0] = i
                obj_control.map[isoX+(isoZ*obj_control.mapWidth),isoY-1].wall[2] = i
            }
        }
        //Check West Wall
        if isoX > 0
        {
            if obj_control.map[isoX-1+((isoZ+1)*obj_control.mapWidth),isoY].ground = true
            {
                i = instance_create(x-10,y-7,obj_thinwall)
                i.owner = id
                i.h = h
                i.facing = -1
                wall[3] = i
                obj_control.map[isoX-1+(isoZ*obj_control.mapWidth),isoY].wall[1] = i
            }
        }
        //Check South Wall
        if isoY < obj_control.mapHeight-1
        {
            if obj_control.map[isoX+((isoZ+1)*obj_control.mapWidth),isoY+1].ground = true
            {
                i = instance_create(x-10,y+4,obj_thinwall)
                i.owner = obj_control.map[isoX+(isoZ*obj_control.mapWidth),isoY+1]
                i.h = h
                i.facing = 1
                wall[2] = i
                obj_control.map[isoX+(isoZ*obj_control.mapWidth),isoY+1].wall[0] = i
            }
        }
        
        //Check East Wall
        if isoX < obj_control.mapWidth-1
        {
            if obj_control.map[isoX+1+((isoZ+1)*obj_control.mapWidth),isoY].ground = true
            {
                i = instance_create(x+10,y+4,obj_thinwall)
                i.owner = obj_control.map[isoX+1+(isoZ*obj_control.mapWidth),isoY]
                i.h = h
                i.facing = -1
                wall[1] = i
                obj_control.map[isoX+1+(isoZ*obj_control.mapWidth),isoY].wall[3] = i
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
    
        humidity = humidity/(ds_list_size(adjacent)+2)
        }
    }
}


