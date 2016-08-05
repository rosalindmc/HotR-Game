//Queen's Field creator Step
//scr_queensField
vDecay = .8
hDecay = .4

//Check
if life > 0
{
    if !instance_place(x,y,obj_worldTile)
    {
        if life >= 2
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
            i.cliffType = spr_coldStoneCliff
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
        i = instance_create(x,y+km,obj_worldCreator)
        i.life = life-(vDecay/4)-random(vDecay)
        i.biome = biome
        
        //East Spread
        i = instance_create(x+km,y,obj_worldCreator)
        i.life = life-(hDecay/4)-random(hDecay)
        i.biome = biome
        
        //West Spread
        i = instance_create(x-km,y,obj_worldCreator)
        i.life = life-(hDecay/4)-random(hDecay)
        i.biome = biome       
    }
}
instance_destroy()
