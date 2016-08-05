//Coldfist Taiga creator Step
//scr_coldfistTaiga
vDecay = .8
hDecay = .6

//Check
if life > 0
{
    if !instance_place(x,y,obj_worldTile)
    {
        if life >= 2
        {
            //Place Tile
            i = instance_create(x,y,obj_worldTile)
            i.nBorder = spr_cftGrassTrim
            i.eBorder = spr_cftGrassTrim
            i.sBorder = spr_cftGrassTrim
            i.wBorder = spr_cftGrassTrim
            i.sprite_index = spr_cftGrass
            i.cliffColour = c_orange
            i.waterColour = ltBlue
            i.cliffType = spr_coldStoneCliff
            if random(10) > 8
            {i.level = 4}
            else
            {i.level = 3}
        }
        else
        {
            //Coast
            i = instance_create(x,y,obj_seaTile)
            i.borderColour = ltBlue
            i.sprite_index = spr_water
            life -= 1
        }
        
        //North Spread
        if collision_point(x,y-km,obj_worldTile,false,true) = noone
        {
        i = instance_create(x,y-km,obj_worldCreator)
        i.life = life-(vDecay/2)-random(vDecay*1.5)
        i.biome = biome
        }
        
        //South Spread
        if collision_point(x,y+km,obj_worldTile,false,true) = noone
        {
        i = instance_create(x,y+km,obj_worldCreator)
        i.life = life-(vDecay/2)-random(vDecay*1.5)
        i.biome = biome
        }
        
        //East Spread
        if collision_point(x+km,y,obj_worldTile,false,true) = noone
        {
        i = instance_create(x+km,y,obj_worldCreator)
        i.life = life-(hDecay/2)-random(hDecay)
        i.biome = biome
        }
        
        //West Spread
        if collision_point(x-km,y,obj_worldTile,false,true) = noone
        {
        i = instance_create(x-km,y,obj_worldCreator)
        i.life = life-(hDecay/2)-random(hDecay)
        i.biome = biome
        } 
    }
}
instance_destroy()
