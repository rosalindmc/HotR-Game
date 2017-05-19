#define lightControlMap
//Set Baseline for whole map

//Go through each light sources and apply light to all relevant tiles

#define lightControl
lights = ds_priority_create()

//Ambient Light
with(obj_tile)
{
    lR = 0
    lG = 0
    lB = 0
    
    if lightSource = true
    {
        ds_priority_add(lights,id,random(100))
    }
}

/*
ix = 0
repeat(mapWidth)
{
    iy = 0
    repeat(mapHeight)
    {
        iz = 0
        repeat(mapDepth)
        {
            map[ix+(mapWidth*iz),iy].lR = 0
            map[ix+(mapWidth*iz),iy].lG = 0
            map[ix+(mapWidth*iz),iy].lB = 0
            
            if map[ix+(mapWidth*iz),iy].lightSource = true
            {
                ds_priority_add(lights,map[ix+(mapWidth*iz),iy],random(100))
            }
            iz++
        }
    iy++
    }
ix++
}
*/

with(obj_character)
{
    if lightSource = true
    {
        ds_priority_add(other.lights,id,random(100))
    }
}

//Light Spread
while(!ds_priority_empty(lights))
{
    global.i = ds_priority_delete_max(lights)
    
    global.tiles = ds_priority_create()
    
    with(obj_tile)
    {
        if point_distance(0,0,x- global.i.x,(y- global.i.y)*2) < global.i.spreadStrength*metre*1.5
        {
            ds_priority_add(global.tiles,id,point_distance(0,0,x- global.i.x,(y- global.i.y)*2))
        }
    }   
    
    while(!ds_priority_empty(global.tiles))
    {
        global.ii = ds_priority_delete_max(global.tiles)
        
        losLight(global.i.spreadStrength,global.i,global.ii)
    }
    
    ds_priority_destroy(global.tiles)
}

ds_priority_destroy(lights)


//Final Light
with(obj_tile)
{
    lR = max(global.ambientR,lR)
    lG = max(global.ambientG,lG)
    lB = max(global.ambientB,lB)
}


/*Final Light
ix = 0
repeat(mapWidth)
{
    iy = 0
    repeat(mapHeight)
    {
        iz = 0
        repeat(mapDepth)
        {
            map[ix+(mapWidth*iz),iy].lR = max(global.ambientR,map[ix+(mapWidth*iz),iy].lR)
            map[ix+(mapWidth*iz),iy].lG = max(global.ambientG,map[ix+(mapWidth*iz),iy].lG)
            map[ix+(mapWidth*iz),iy].lB = max(global.ambientB,map[ix+(mapWidth*iz),iy].lB)
            iz++
        }
    iy++
    }
ix++
}