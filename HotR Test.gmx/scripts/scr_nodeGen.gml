// Node World
ix = 0
repeat(mapWidth-1)
{
    ix += 1
    iy = 0
    repeat(mapHeight-1)
    {
        iy += 1
        if random(100) < 90
        {
            instance_create((ix*100)-25+random(50),(iy*100)-25+random(50),obj_travelNode)        
        }
    }
}

