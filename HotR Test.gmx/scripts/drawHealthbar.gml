//Healthbar visualizer script actors
//drawHealthbar()

//Healthbar draw poistion
var tx = round(x)
var ty = round(y-h-height-10)+(global.zLevel*15)
var i = 0

//Healthbar width and height (halved)
var barw = 25
var barh = 1

//Armour positions
var ax = tx-barw+4
var ay = ty-barh+5

//Block Positions
var bx = tx-barw+4

//Draw Blocks
repeat(floor(blocks))
{
    draw_sprite(spr_blockIcon,0,bx,ty-barh-5)
    bx += 10
}

//Draw Healthbar
draw_set_colour(c_black)
draw_rectangle(tx-barw-1,ty-barh-1,tx+barw+1,ty+barh+2,false)

if lifeVis > life
{
    draw_set_colour(c_red)
    draw_rectangle(tx-barw,ty-barh,tx-barw+floor((max(lifeVis,0)/lifeMax)*barw*2),ty+barh+1,false)
    draw_set_colour(green)
    draw_rectangle(tx-barw,ty-barh,tx-barw+round((max(life,0)/lifeMax)*barw*2),ty+barh+1,false)
}
else
{
    draw_set_colour(c_white)
    draw_rectangle(tx-barw,ty-barh,tx-barw+floor((max(life,0)/lifeMax)*barw*2),ty+barh+1,false)
    draw_set_colour(green)
    draw_rectangle(tx-barw,ty-barh,tx-barw+round((max(lifeVis,0)/lifeMax)*barw*2),ty+barh+1,false)
}

draw_set_alpha(.5)
draw_set_colour(c_black)
draw_rectangle(tx-barw,ty-barh,tx+barw,ty+barh+1,true)
draw_set_alpha(1)

//Health Divider
repeat(floor(lifeMax/4))
{
    i += 4
    draw_line(tx-barw+round((i/lifeMax)*barw*2),ty-barh-1,tx-barw+round((i/lifeMax)*barw*2),ty+barh+2)
}

//Draw Armour
if armMax > 0
{
    i = 0

    repeat(floor(armMax/4))
    {
        draw_sprite(spr_armIcon,0,ax,ay)
        ax += 5
        i += 4
    }
    if armMax > i
    {
        draw_sprite(spr_armIcon,armMax-i,ax,ay)
    }
    
    //Reset variables to draw shields
    ax = tx-barw+4
    i = 0
    
    repeat(floor(arm/4))
    {
        draw_sprite(spr_armIcon,4,ax,ay)
        ax += 5
        i += 4
    }
    if arm > i
    {
        draw_sprite(spr_armIcon,4+arm-i,ax,ay)
    }
}

//Bold Glow
if bold = 1 and noMorale = false
{
    part_system_depth(ps1,depth+1)
    part_emitter_region(ps1,em1,tx-barw,tx+barw,ty,ty,ps_shape_rectangle,1)
    part_emitter_burst(ps1,em1,part1,300/global.fspd)
}
