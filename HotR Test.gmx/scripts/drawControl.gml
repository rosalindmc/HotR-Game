if global.loading = false
{
    for(ix = 0; ix < mapWidth-1; ix++)
    {
        for(iy = 0; iy < mapHeight-1; iy++)
        {
            for(iz = 0; iz < mapDepth-1; iz++)
            {
                spr = map[ix+(mapWidth*iz),iy]
                if spr.isoZ <= global.zLevel or global.zViewToggle = true
                {
                if spr.vis != false and spr.scrollVis != false
                {
                    //Draw Walls (Behind)
                    if spr.wall[0] != noone
                    {
                        draw_sprite_ext(spr.wall[0].sprite_index,spr.wall[0].image_index,spr.wall[0].x,spr.wall[0].y-spr.wall[0].h+(global.zLevel*15),spr.facing,spr.image_yscale,0,c_white,1)
                    }
                    
                    //
                    if spr.wall[3] != noone
                    {
                        draw_sprite_ext(spr.wall[3].sprite_index,spr.wall[3].image_index,spr.wall[3].x,spr.wall[3].y-spr.wall[3].h+(global.zLevel*15),spr.facing,spr.image_yscale,0,c_white,1)
                    }
                    
                    //Draw Tile
                    draw_sprite(spr.sprite_index,spr.image_index,spr.x,spr.y-spr.h+(global.zLevel*15))
                    
                    //Draw Border
                    for(i=0;i<5;i++)
                    {
                        draw_sprite_ext(spr.level[i],i,spr.x,spr.y-spr.h+(global.zLevel*15),1,1,0,spr.trimColour,1)
                    }
                    
                    //Draw Overlay
                    if spr.overlay != 0 || spr.onPath >= 4
                    {
                        if spr.isoZ = global.zLevel or spr.onPath >= 4
                        {
                            draw_sprite(spr_tilePathing,max(spr.overlay,spr.onPath),spr.x,spr.y-spr.h+(global.zLevel*15))
                        }
                        else 
                        {
                            draw_sprite(spr_tilePathing,spr.overlay+5,spr.x,spr.y-spr.h+(global.zLevel*15))
                        }
                    }
                }
                }
            }
        }
    }
}
