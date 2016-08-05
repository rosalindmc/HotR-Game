//Queen's Field creator Step
//scr_queensField
vDecay = 1.2
hDecay = 1

//Check
if life > 0
{
    if !instance_place(x,y,obj_worldTile)
    {
        //Place Tile
        i = instance_create(x,y,obj_worldTile)
        i.nBorder = spr_qfGrassTrim
        i.eBorder = spr_qfGrassTrim
        i.sBorder = spr_qfGrassTrim
        i.wBorder = spr_qfGrassTrim
        i.sprite_index = spr_qfGrass
        i.cliffColour = c_green
        i.waterColour = ltBlue
             
        if life >= .2
        {  
            i.cliffType = spr_dirtCliff
            if random(15-life) > 9
            {i.level = 4}
            else
            {i.level = 3}
        }
        else
        {
            i.cliffType = spr_stoneCliff
            i.level = choose(6,6,7,8)
        }
        
        //North Spread
        if collision_point(x,y-km,obj_worldTile,false,true) = noone
        {
        i = instance_create(x,y-km,obj_worldCreator)
        i.life = life-(vDecay/2)-random(vDecay/2)
        i.biome = biome
        }
        
        //South Spread
        if collision_point(x,y+km,obj_worldTile,false,true) = noone
        {
        i = instance_create(x,y+km,obj_worldCreator)
        i.life = life-(vDecay/2)-random(vDecay/2)
        i.biome = biome
        }
        
        //East Spread
        if collision_point(x+km,y,obj_worldTile,false,true) = noone
        {
        i = instance_create(x+km,y,obj_worldCreator)
        i.life = life-(hDecay/2)-random(hDecay/2)
        i.biome = biome
        }
        
        //West Spread
        if collision_point(x-km,y,obj_worldTile,false,true) = noone
        {
        i = instance_create(x-km,y,obj_worldCreator)
        i.life = life-(hDecay/2)-random(hDecay/2)
        i.biome = biome
        }
    }
}
instance_destroy()
