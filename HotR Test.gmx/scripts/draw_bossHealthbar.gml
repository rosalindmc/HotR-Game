//Healthbar visualizer script for Bosses to appear at the top of the screen
//draw_bossHealthbar()

//Healthbar draw poistion
var tx = view_xview[0]+(view_wview[0]/2)
var ty = view_yview[0]+10
var i = 0

//Healthbar width and height (halved)
var barw = 300
var barh = 5

//Armour positions
var ax = tx-barw+4
var ay = ty-barh+5

//Draw Healthbar
draw_set_colour(c_black)
draw_rectangle(tx-barw-1,ty-barh-1,tx+barw+1,ty+barh+2,false)

if lifeVis > life
{
    draw_set_colour(c_red)
    draw_rectangle(tx-barw,ty-barh,tx-barw+floor((lifeVis/lifeMax)*barw*2),ty+barh+1,false)
    draw_set_colour(ui_green)
    draw_rectangle(tx-barw,ty-barh,tx-barw+round((life/lifeMax)*barw*2),ty+barh+1,false)
}
else
{
    draw_set_colour(c_white)
    draw_rectangle(tx-barw,ty-barh,tx-barw+floor((life/lifeMax)*barw*2),ty+barh+1,false)
    draw_set_colour(ui_green)
    draw_rectangle(tx-barw,ty-barh,tx-barw+round((lifeVis/lifeMax)*barw*2),ty+barh+1,false)
}

draw_set_alpha(.5)
draw_set_colour(c_black)
draw_rectangle(tx-barw,ty-barh,tx+barw,ty+barh+1,true)
draw_set_alpha(1)

//Health Divider
repeat(floor(lifeMax/4)-1)
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
