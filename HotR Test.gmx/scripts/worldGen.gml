#define worldGen
mapHeight = 99
mapWidth = 199
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
populate()

worldScrollVis()

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
        humidity += 25
    }
    else if height > 10
    {
        sprite_index = spr_hgGrass
    }
    else if height > -10
    {
        sprite_index = spr_water
    }
    else
    {
        humidity += 75
    }
}

#define humidityGen
repeat(4)
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
            trimColour = green
            }
            else
            {
            sprite_index = spr_orangeGrass
            trimColour = dkBrown
            }
        }
        else if humidity > 15 and height < 15
        {
            sprite_index = spr_swamp
            trimColour = c_teal
        }
        else if humidity > 8
        {
            if temprature > 0
            {
            sprite_index = spr_brightGrass
            overlay = spr_forest
            trimColour = green
            }
            else
            {
            sprite_index = spr_orangeGrass
            overlay = spr_forest
            trimColour = dkBrown
            }
        }
        else if humidity >= 1
        {
            if temprature > 0
            {
            sprite_index = spr_brightGrass
            trimColour = green
            }
            else
            {
            sprite_index = spr_orangeGrass
            trimColour = dkBrown
            }
        }
        else
        {
            if temprature > 15
            {
            sprite_index = spr_desert
            trimColour = dkBrown
            }
            else if temprature > 0
            {
            sprite_index = spr_hgGrass
            trimColour = green
            }
            else
            {
            sprite_index = spr_orangeGrass
            trimColour = dkBrown
            }
        }
    }
    else
    {
        sprite_index = spr_snow
        trimColour = iceBlue
    }
    }
    humidity = max(humidity,0)
}

#define populate
//Node Populate
//Dont Know if I'll Keep?

var iiii = 0
            
ix = 3
iy = 3

repeat(floor(mapWidth/4))
{
    repeat(floor(mapHeight/4))
    {
        i = global.worldMap[ix+choose(-1,0),iy+choose(-1,0)]

        if random(100) < 75 and i.overlay != spr_mountain
        {      
            ii = instance_create(i.x,i.y,obj_travelNode)
            ii.tile = i
            
            switch(i.sprite_index)
            {
                case spr_deeps: 
                //if ii.tile.mapX/2 = round(ii.tile.mapX/2) or ii.tile.mapY/2 = round(ii.tile.mapY/2) {ii.image_index = 3} 
                //else {
                with(ii){instance_destroy()}//} 
                break
                case spr_water: 
                //if ii.tile.mapX/2 = round(ii.tile.mapX/2) or ii.tile.mapY/2 = round(ii.tile.mapY/2) {ii.image_index = 2}
                //else {
                with(ii){instance_destroy()}//} 
                break
            }
            
            //Temp Create Parties
            if random(100) < 10 and instance_exists(ii)
            {
                iii = instance_create(ii.x,ii.y,obj_party)
                iii.node = ii
                iii.depth = ii.depth-1
                
                if iiii < global.playerCount
                {
                iii.ruleSet = choose(cwParty)
                iiii += 1
                iii.playerControl = true
                }
                else
                {
                    iii.ruleSet = choose(efScouting, warhostParty, wretchParty, undeadBand, cfViking, cultParty, raidingParty)
                }
                
                with(iii)
                {
                    script_execute(ruleSet)
                }
            }
        }
        
        iy += 4
    }
    ix += 4
    iy = 3
}

//Tags
with(obj_travelNode)
{
}

//Adjacencies
with(obj_travelNode)
{
    with(obj_travelNode)
    {
        if distance_to_point(other.x,other.y) < 150
        {
            ds_list_add(adjacent,other)
        }
    }
}