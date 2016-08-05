//Savage Tundra creator Step
//scr_savageTundra
vDecay = .3
hDecay = .4

//Check
if life > 0
{
    if !instance_place(x,y,obj_worldTile)
    {
        if life >= random(2)+1
        {
            //Place Tile
            i = instance_create(x,y,obj_worldTile)
            i.nBorder = spr_stSnowTrim
            i.eBorder = spr_stSnowTrim
            i.sBorder = spr_stSnowTrim
            i.wBorder = spr_stSnowTrim
            i.sprite_index = spr_stSnow
            i.cliffColour = iceBlue
            i.waterColour = ltBlue
            i.cliffType = spr_iceCliff
            if random(10+life) > 10
            {i.level = choose(3,4)}
            else
            {i.level = 2}
        }
        else
        {
            //Coast
            i = instance_create(x,y,obj_seaTile)
            i.borderColour = ltBlue
            i.sprite_index = spr_water
        }
         
        //South Spread
        if collision_point(x,y+km,obj_worldTile,false,true) = noone
        {
        i = instance_create(x,y+km,obj_worldCreator)
        i.life = life-(vDecay/8)-random(vDecay*3)
        i.biome = biome
        }
        
        //East Spread
        if collision_point(x+km,y,obj_worldTile,false,true) = noone
        {
        i = instance_create(x+km,y,obj_worldCreator)
        i.life = life-(hDecay/8)-random(hDecay*2)
        i.biome = biome
        }
        
        //West Spread
        if collision_point(x-km,y,obj_worldTile,false,true) = noone
        {
        i = instance_create(x-km,y,obj_worldCreator)
        i.life = life-(hDecay/4)-random(hDecay*3)
        i.biome = biome
        }   
    }
}
instance_destroy()
