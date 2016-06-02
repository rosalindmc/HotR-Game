//Healthbar visualizer script for Player characters to appear next to portraits
//draw_uiHealthbar(x,y,id)

//Healthbar draw poistion
var tx = argument0
var ty = argument1
var ID = argument2
var i = 0

//Healthbar width and height (halved)
var barw = ID.lifeMax*4
var barh = 2

//Armour positions
var ax = tx+7
var ay = ty+5

//Draw Healthbar
draw_set_colour(c_black)
draw_rectangle(tx-1,ty-barh-1,tx+barw+1,ty+barh+2,false)

if ID.lifeVis > ID.life
{
    draw_set_colour(c_red)
    draw_rectangle(tx,ty-barh,tx+floor((max(ID.lifeVis,0)/ID.lifeMax)*barw),ty+barh+1,false)
    draw_set_colour(green)
    draw_rectangle(tx,ty-barh,tx+round((max(ID.life,0)/ID.lifeMax)*barw),ty+barh+1,false)
}
else
{
    draw_set_colour(c_white)
    draw_rectangle(tx,ty-barh,tx+floor((max(ID.life,0)/ID.lifeMax)*barw),ty+barh+1,false)
    draw_set_colour(green)
    draw_rectangle(tx,ty-barh,tx+round((max(ID.lifeVis,0)/ID.lifeMax)*barw),ty+barh+1,false)
}

draw_set_alpha(.5)
draw_set_colour(c_black)
draw_rectangle(tx,ty-barh,tx+barw,ty+barh+1,true)
draw_set_alpha(1)

//Health Divider
repeat(floor(ID.lifeMax/4))
{
    i += 4
    draw_line(tx+round((i/ID.lifeMax)*barw),ty-barh-1,tx+round((i/ID.lifeMax)*barw),ty+barh+2)
}

//Draw Armour
if ID.armMax > 0
{
    i = 0

    repeat(floor(ID.armMax/4))
    {
        draw_sprite(spr_bigArmIcon,0,ax,ay)
        ax += 7
        i += 4
    }
    if ID.armMax > i
    {
        draw_sprite(spr_bigArmIcon,ID.armMax-i,ax,ay)
    }
    
    //Reset variables to draw shields
    ax = tx+7
    i = 0
    
    repeat(floor(ID.arm/4))
    {
        draw_sprite(spr_bigArmIcon,4,ax,ay)
        ax += 7
        i += 4
    }
    if ID.arm > i
    {
        draw_sprite(spr_bigArmIcon,4+ID.arm-i,ax,ay)
    }
}
