#define updateVision
with(obj_tile)
{
    if vis = true
    {
        vis = 2
    }
}

with(obj_character)
{
    vis = false
    
    if player = true
    {
        vis = true
        
        with(obj_tile)
        {
            if vis != true
            {
                if los(other.sight,other.sightTile,sightTile)
                {
                    vis = true
                    if instance_exists(occupant)
                    {
                        occupant.vis = true
                    }
                }
            }
        }
        
        with(obj_character)
        {
            if team != other.team
            {
                if vis != true
                {
                    if los(other.sight,other.sightTile,sightTile)
                    {
                        vis = true
                        isoTile.vis = true
                    }
                }
            }
        }
    }
}

//Update Mask
global.maskSurf = surface_create(global.surfX2-global.surfX1,global.surfY2-global.surfY1)
        
surface_set_target(global.maskSurf)
draw_clear_alpha(c_white,1)
draw_set_blend_mode(bm_subtract)
with(obj_tile)
{
    if water = 1 and vis != false
    {
        draw_sprite(spr_tile,0,x-global.surfX1,y-h-wH-global.surfY1)
    }
}
draw_set_blend_mode(bm_normal)
with(obj_tile)
{
if vis != false
{
    if water != 1 and isoZ >= global.waterLevel
    {
        draw_sprite(spr_tile,0,x-global.surfX1,y-h-wH-global.surfY1)
    }
    if water = 1
    {
        if level[0] != spr_none
        {
            draw_sprite_ext(spr_wallmask,0,x+11-global.surfX1,y-7-wH-h-global.surfY1,1,1,0,c_white,1)
            draw_sprite_ext(spr_wallmask,0,x+11-global.surfX1,y-10-wH-h-global.surfY1,1,1,0,c_white,1)
        }
        if level[3] != spr_none
        {
            draw_sprite_ext(spr_wallmask,0,x-11-global.surfX1,y-7-wH-h-global.surfY1,-1,1,0,c_white,1)
            draw_sprite_ext(spr_wallmask,0,x-11-global.surfX1,y-10-wH-h-global.surfY1,-1,1,0,c_white,1)
        }
    }
}
}
surface_reset_target()


#define updateScrollVis
view_xview = max(obj_camera.x-(view_wview/2),0)
view_yview = max(obj_camera.y-(view_hview/2),0)

with(obj_terrain)
{
    scrollVis = false
    
    if x > view_xview-40
    {if x < view_xview+view_wview+40
    {if y+h+(global.zLevel*15) > view_yview-20
    {if y+h+(global.zLevel*15) < view_yview+view_hview+100
    {scrollVis = true}}}}
}

with(obj_character)
{
    scrollVis = false
    
    if x > view_xview-40
    {if x < view_xview+view_wview+40
    {if y+h+(global.zLevel*15) > view_yview-20
    {if y+h+(global.zLevel*15) < view_yview+view_hview+100
    {scrollVis = true}}}}
}