//Draw Portraits Script
//scr_playerPortrait(number of player characters)

i = 0
repeat(argument0)
{
i += 1

//Temp Portrait Icon
draw_sprite_ext(spr_portrait,i,view_xview[0]+30,view_yview[0]-10+(i*45),2,2,0,c_white,1)

//Vitality, Stamina, Morale
draw_sprite(spr_vitIcon,max(0,ceil(4*(control[i].vit/control[i].vitMax))-1),view_xview[0]+56,view_yview[0]-22+(i*45))
draw_sprite(spr_stmIcon,max(0,ceil(4*(control[i].stm/control[i].stmMax))-1),view_xview[0]+64,view_yview[0]-22+(i*45))
draw_sprite(spr_morIcon,max(0,ceil(4*(control[i].mor/control[i].morMax))-1),view_xview[0]+72,view_yview[0]-22+(i*45))

//Text
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_font(fnt_tiny)
scr_drawText(c_black,c_white,view_xview[0]+54,view_yview[0]+(i*45),control[i].actionString)

//Healthbar
draw_uiHealthbar(view_xview[0]+50,view_yview[0]-15+(i*45),control[i])
}
