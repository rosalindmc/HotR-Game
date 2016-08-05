//Hearthgrove creator Step
//scr_hearthgrove
vDecay = 6
hDecay = 6

//Check
if life > 0
{
    if !instance_place(x,y,obj_worldTile)
    {
        if life = 10
        {
            //Place Tile
            i = instance_create(x,y,obj_worldTile)
            i.nBorder = spr_hgGrassTrim
            i.eBorder = spr_hgGrassTrim
            i.sBorder = spr_hgGrassTrim
            i.wBorder = spr_hgGrassTrim
            i.cliffColour = hearthgroveGreen
            i.waterColour = ltBlue
            i.cliffType = spr_stoneCliff
            i.level = 9
        }
        else if (life/2)+random(life/2) >= 2.5
        {
            //Place Tile
            i = instance_create(x,y,obj_worldTile)
            i.nBorder = spr_hgGrassTrim
            i.eBorder = spr_hgGrassTrim
            i.sBorder = spr_hgGrassTrim
            i.wBorder = spr_hgGrassTrim
            i.cliffColour = hearthgroveGreen
            i.waterColour = ltBlue
            i.cliffType = spr_stoneCliff
            i.level = choose(6,7,8)
        }
        else
        {
            //Coast
            i = instance_create(x,y,obj_seaTile)
            i.borderColour = ltBlue
            i.sprite_index = spr_water
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
