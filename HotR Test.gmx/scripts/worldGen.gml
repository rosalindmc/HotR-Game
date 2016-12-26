#define worldGen
mapHeight = 69
mapWidth = 139
room_width = 20+(mapWidth*20)
room_height = 22+(mapHeight*20)

//Initial Grid
ix = 0
iy = 0
even = true

repeat(mapWidth)
{
    repeat(mapHeight+even)
    {
    i = instance_create(20+(ix*20),(iy*20)+20+(-10*even),obj_worldTile)
    global.worldMap[ix,iy] = i
    i.mapX = ix
    i.mapY = iy
    
    iy += 1
    }
    
    ix += 1
    iy = 0
    even = 1-even
}

//Adjacency
ix = 0
iy = 0
even = true

repeat(mapWidth)
{
    repeat(mapHeight+even)
    {
    tile = global.worldMap[ix,iy] 

        //West Adjacency
        if ix > 1
        ds_list_add(tile.adjacent, global.worldMap[ix-2,iy])
        //East Adjacency
        if ix < mapWidth-2
        ds_list_add(tile.adjacent, global.worldMap[ix+2,iy])
        //North Adjacency
        if iy > 0
        ds_list_add(tile.adjacent, global.worldMap[ix,iy-1])
        //South Adjacency
        if iy-even < mapHeight-1
        ds_list_add(tile.adjacent, global.worldMap[ix,iy+1])
         
        //North-West Adjacency
        if ix > 0 && iy-even >= 0
        ds_list_add(tile.adjacent, global.worldMap[ix-1,iy-even])  
        //North-East Adjacency
        if ix < mapWidth-1 && iy-even >= 0
        ds_list_add(tile.adjacent, global.worldMap[ix+1,iy-even])  
        //South-West Adjacency
        if ix > 0 && iy < mapHeight
        ds_list_add(tile.adjacent, global.worldMap[ix-1,iy+1-even])
        //South-East Adjacency
        if ix < mapWidth-1 && iy < mapHeight
        ds_list_add(tile.adjacent, global.worldMap[ix+1,iy+1-even])
        
    iy += 1
    }
    
    ix += 1
    iy = 0
    even = 1-even
}

heightGen()
humidityGen()
tempratureGen()

#define heightGen
repeat(2)
{
    with(obj_worldTile)
    {
    i = 0
    height *= 2
    
    repeat(ds_list_size(adjacent))
    {
        tile = ds_list_find_value(adjacent, i)
        height += tile.height
        
        i += 1
    }
    
    height = height/(ds_list_size(adjacent)+2)
    }
}

with(obj_worldTile)
{
    if height > 65
    {
        sprite_index = spr_hgGrass
        overlay = spr_mountain
    }
    else if height > 10
    {
        sprite_index = spr_hgGrass
    }
    else if height > -10
    {
        sprite_index = spr_water
        humidity += 25
    }
}

#define humidityGen
repeat(2)
{
    with(obj_worldTile)
    {
    i = 0
    
    repeat(ds_list_size(adjacent))
    {
        tile = ds_list_find_value(adjacent, i)
        humidity += tile.humidity
        
        i += 1
    }
    
    humidity = humidity/(ds_list_size(adjacent)+1)
    }
}


#define tempratureGen
repeat(2)
{
    with(obj_worldTile)
    {
    i = 0
    
    repeat(ds_list_size(adjacent))
    {
        tile = ds_list_find_value(adjacent, i)
        temprature += tile.temprature
        
        i += 1
    }
    
    temprature = temprature/(ds_list_size(adjacent)+1)
    }
}

with(obj_worldTile)
{
    if sprite_index = spr_hgGrass
    {
    
    if temprature > -10
    {
        if humidity > 18
        {
            if temprature > 0
            {
            sprite_index = spr_hgGrass
            }
            else
            {
            sprite_index = spr_orangeGrass
            }
        }
        else if humidity > 15
        {
            sprite_index = spr_swamp
        }
        else if humidity > 13
        {
            if temprature > 0
            {
            sprite_index = spr_hgGrass
            overlay = spr_forest
            }
            else
            {
            sprite_index = spr_orangeGrass
            overlay = spr_forest
            }
        }
        else if humidity > 1
        {
            if temprature > 0
            {
            sprite_index = spr_hgGrass
            }
            else
            {
            sprite_index = spr_orangeGrass
            }
        }
        else
        {
            sprite_index = spr_desert
        }
    }
    else
    {
        sprite_index = spr_snow
    }
    }
    humidity = max(humidity,0)
}
