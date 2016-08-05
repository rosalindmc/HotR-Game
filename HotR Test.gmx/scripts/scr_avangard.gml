//Avangard creator Step
//scr_avangard
vDecay = 1.5
hDecay = 1.5

//Check
if life > 0
{
    if !instance_place(x,y,obj_worldTile)
    {
        if life >= 7
        {
            //Place Tile
            i = instance_create(x,y,obj_worldTile)
            i.nBorder = spr_agStoneTrim
            i.eBorder = spr_agStoneTrim
            i.sBorder = spr_agStoneTrim
            i.wBorder = spr_agStoneTrim
            i.sprite_index = spr_agStone
            i.cliffColour = orcGreen
            i.waterColour = ltBlue
            i.cliffType = spr_agCliff
            i.level = choose(6,7,7,8)
        }
        else
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
            i.cliffType = spr_agCliff
            if random(10) > 8
            {i.level = 4}
            else
            {i.level = 3}
        }
        
        //North Spread
        if collision_point(x,y-km,obj_worldTile,false,true) = noone
        {
        i = instance_create(x,y-km,obj_worldCreator)
        i.life = life-(vDecay/2)-random(vDecay)
        i.biome = biome
        }
        
        //South Spread
        if collision_point(x,y+km,obj_worldTile,false,true) = noone
        {
        i = instance_create(x,y+km,obj_worldCreator)
        i.life = life-(vDecay/2)-random(vDecay)
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
