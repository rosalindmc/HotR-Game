//Elder Swamp creator Step
//scr_elderSwamp
vDecay = 1.6
hDecay = 1.2

//Check
if life > 0
{
    if !instance_place(x,y,obj_parentTile)
    {
        if (life > 2 and life < 5) or (life > 5 and random(1) > .33) or life > 8
        {
            //Place Tile
            i = instance_create(x,y,obj_worldTile)
            i.nBorder = spr_hgGrassTrim
            i.eBorder = spr_hgGrassTrim
            i.sBorder = spr_hgGrassTrim
            i.wBorder = spr_hgGrassTrim
            i.cliffColour = hearthgroveGreen
            i.waterColour = ltBlue
            i.cliffType = spr_dirtCliff
            if random(2.5) > 2
            {i.level = 3}
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
        i.life = life-(hDecay/2)-random(hDecay)
        i.biome = biome
        }
    }
}
instance_destroy()
