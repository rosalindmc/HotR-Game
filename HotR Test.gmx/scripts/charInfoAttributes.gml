#define charInfoAttributes
setTooltip(0,"Your Might grants#"+string_format((might-8)/2,0,2)+" Weapon POW#"+string_format((might-8)/4,0,2)+" Life#+"+string_format(might/4,0,2)+" Block Strength",4)
setTooltip(1,"Your Grace grants#"+string_format((grace-8)*.2,0,1)+" / "+string_format((grace-8)*.5,0,1)+" Movement#"+string((grace-8)*3)+" % Haste#"+string((grace-8)*3)+" % Action Haste#"+string_format((grace-8)*.1,0,1)+" Combat Skill#"+string_format((grace-8)/2,0,1)+" Stamina",6)
setTooltip(2,"Your Cunning grants#"+string((cunning-8)*5)+" % Ability Duration#"+string((cunning-8)*5)+" % Ability Cooldown#"+string((cunning-8)*3)+" % Exp Multiplier#"+string_format((cunning-8)*.2,0,1)+" Combat Skill",5)
setTooltip(3,"Your Will grants#"+string_format((will-8)/2,0,1)+" Life#"+string_format((will-8),0,1)+" Stamina#"+string_format((will-8)/2,0,1)+" Regeneration",4)
setTooltip(4,"Your Fellowship grants#"+string((fellowship-8)*5)+" % Suppression Resist#"+string((fellowship-8)*5)+" % Bold Advantages#",3)
setTooltip(5,"",1)
setTooltip(6,"If your Life is reduced to 0 you will be downed and may be critically wounded or killed",4)
setTooltip(7,"If your Stamina is reduced below 60 % you will suffer combat disadvantage",4)

draw_set_halign(fa_left)
draw_text(ix,iy+20,"Might")
draw_text(ix,iy+32,"Grace")
draw_text(ix,iy+44,"Cunning")    
draw_text(ix,iy+56,"Will")
draw_text(ix,iy+68,"Fellowship")

draw_text(ix,iy+92,"Life")
draw_text(ix,iy+104,"Stamina")

draw_set_halign(fa_center)
draw_text(ix+60,iy+20,might)
draw_text(ix+60,iy+32,grace)
draw_text(ix+60,iy+44,cunning)   
draw_text(ix+60,iy+56,will)
draw_text(ix+60,iy+68,fellowship)

draw_text(ix+60,iy+92,lifeMax)
draw_text(ix+60,iy+104,stmMax)


#define charInfoDefence
setTooltip(0,"If your Life is reduced to 0 you will be downed and may be critically wounded or killed",4)
setTooltip(1,"Life Regeneration in combat over 15 seconds",2)
setTooltip(2,"Reduces damage suffered by "+string_format(100-(100/(1+dmgMitigation)),0,0)+" %",2)
setTooltip(3,"Chance of evading attacks originating from within your front arc",3)
setTooltip(4,"Reduces damage suffered by "+string_format(armMax/16,0,1)+" - "+string_format(armMax/4,0,1),2)
setTooltip(5,'',1)
setTooltip(6,'',1)
setTooltip(7,'',1)

draw_set_halign(fa_left)
draw_text(ix,iy+20,"Life")  
draw_text(ix,iy+32,"Regen")  
draw_text(ix,iy+44,"Mitigation")  
draw_text(ix,iy+56,"Dodge")
draw_text(ix,iy+68,"Armour")

draw_set_halign(fa_center)
draw_text(ix+60,iy+20,lifeMax)
draw_text(ix+60,iy+32,string_format(lifeRegen,0,1)+" /15s")
draw_text(ix+60,iy+44,string(floor(100*dmgMitigation))+" %")
draw_text(ix+60,iy+56,string(floor(dodge))+" %")

if armMax/4 < 5
{
    i = 0
    ax = ix+57-(3*(floor(armMax/4)-1))
    repeat(floor(armMax/4))
    {
        draw_sprite(spr_bigArmIcon,0,ax,iy+69)
        draw_sprite(spr_bigArmIcon,4,ax,iy+69)
        ax += 7
        i += 4
    }
    if armMax > i
    {
        draw_sprite(spr_bigArmIcon,armMax-i,ax,iy+69)
        draw_sprite(spr_bigArmIcon,4+armMax-i,ax,iy+69)
    }
}
else
{
    draw_text(ix+55,iy+68,string(floor(armMax/4)))
    draw_sprite(spr_bigArmIcon,0,ix+65,iy+69) 
    draw_sprite(spr_bigArmIcon,4,ix+65,iy+69) 
}


#define charInfoMelee
//Stats
s1 = (3-(dualWield*.5))/((wepSpeed[1]))
p1 = wepPow[1]+(wepStrMult[1]*atkDPS*(s1+1)/5)
pen1 = wepPen[1]
p1min = floor(p1*(1-wepPowRng[1]))
p1max = ceil(p1*(1+wepPowRng[1]))

s2 = (3-(dualWield*.5))/((wepSpeed[2]))
p2 = wepPow[2]+(wepStrMult[2]*atkDPS*(s2+1)/5)    
pen2 = wepPen[2]
p2min = floor(p2*(1-wepPowRng[2]))
p2max = ceil(p2*(1+wepPowRng[2]))

setTooltip(0,"Reduces the chance of enemies of lower skill dodging or blocking",5)
setTooltip(1,"Primary Weapon Melee Damage",3)
setTooltip(2,"Reduces targets armour",3)
setTooltip(3,"Primary Weapon Attack Speed in seconds",1)
setTooltip(4,'',1)
setTooltip(5,'',1)
setTooltip(6,'',1)
setTooltip(7,'',1)

//Weapon Stats
draw_set_halign(fa_left)
draw_text(ix,iy+20,"Melee Skill")

draw_set_halign(fa_center)
draw_text(ix+60,iy+20,string_format(mSkill,2,1))
iy += 12

draw_set_halign(fa_left)
draw_text(ix,iy+20,"Damage")
draw_text(ix,iy+32,"PEN")
draw_text(ix,iy+44,"Speed")

if dualWield = true
{
    draw_text(ix,iy+68,"Damage")
    draw_text(ix,iy+80,"PEN")
    draw_text(ix,iy+92,"Speed")
    setTooltip(5,"Secondary Weapon Melee Damage",3)
    setTooltip(6,"Reduces targets armour",3)
    setTooltip(7,"Secondary Weapon Attack Speed in seconds",1)
}
else if hasShield = true
{
    draw_text(ix,iy+68,"Block")
    draw_text(ix,iy+80,"Speed")    
    setTooltip(5,"Blocking increases armour by this ammount",1)
    setTooltip(6,"How many seconds it takes to regain a block",1)
}
 
draw_set_halign(fa_center)
draw_text(ix+60,iy+20,string(p1min)+' - '+string(p1max))
 
if pen1/4 < 5
{
    i = 0
    ax = ix+57-(3*(floor(pen1/4)-1))
    repeat(floor(pen1/4))
    {
        draw_sprite(spr_bigArmIcon,0,ax,iy+33)
        draw_sprite(spr_bigArmIcon,4,ax,iy+33)
        ax += 7
        i += 4
    }
    if pen1 > i
    {
        draw_sprite(spr_bigArmIcon,pen1-i,ax,iy+33)
        draw_sprite(spr_bigArmIcon,4+pen1-i,ax,iy+33)
    }
}
else
{
    draw_text(ix+55,iy+32,string(floor(pen1/4)))
    draw_sprite(spr_bigArmIcon,0,ix+65,iy+33) 
    draw_sprite(spr_bigArmIcon,4,ix+65,iy+33) 
}

draw_text(ix+60,iy+44,string_format(s1/(haste+atkHaste),2,2))  

if dualWield = true
{
    draw_text(ix+60,iy+68,string(p2min)+' - '+string(p2max))
    
    if pen2/4 < 5
    {
        i = 0
        ax = ix+57-(3*(floor(pen2/4)-1))
        repeat(floor(pen2/4))
        {
            draw_sprite(spr_bigArmIcon,0,ax,iy+81)
            draw_sprite(spr_bigArmIcon,4,ax,iy+81)
            ax += 7
            i += 4
        }
        if pen2 > i
        {
            draw_sprite(spr_bigArmIcon,pen2-i,ax,iy+81)
            draw_sprite(spr_bigArmIcon,4+pen2-i,ax,iy+81)
        }
    }
    else
    {
        draw_text(ix+55,iy+68,string(floor(pen2/4)))
        draw_sprite(spr_bigArmIcon,0,ix+65,iy+69) 
        draw_sprite(spr_bigArmIcon,4,ix+65,iy+69) 
    }
    
    draw_text(ix+60,iy+92,string_format(s2/(haste+atkHaste),2,2))    
}
else if hasShield = true
{
    if blockStr/4 < 5
    {
        i = 0
        ax = ix+57-(3*(floor(blockStr/4)-1))
        repeat(floor(blockStr/4))
        {
            draw_sprite(spr_bigArmIcon,0,ax,iy+69)
            draw_sprite(spr_bigArmIcon,4,ax,iy+69)
            ax += 7
            i += 4
        }
        if blockStr > i
        {
            draw_sprite(spr_bigArmIcon,blockStr-i,ax,iy+69)
            draw_sprite(spr_bigArmIcon,4+blockStr-i,ax,iy+69)
        }
    }
    else
    {
        draw_text(ix+55,iy+68,string(floor(blockStr/4)))
        draw_sprite(spr_bigArmIcon,0,ix+65,iy+69) 
        draw_sprite(spr_bigArmIcon,4,ix+65,iy+69) 
    }
    draw_text(ix+60,iy+80,string_format(1/blockGen,2,1)+' s')   
}

#define charInfoRanged
//Stats
if wepRRange[1] > 0
{
    s1 = (3-(dualWield*.5))/((wepRSpeed[1]))
    p1 = wepRPow[1]+(wepRStrMult[1]*atkDPS*(s1+1)/5)
    pen1 = wepRPen[1]
    p1min = floor(p1*(1-wepRPowRng[1]))
    p1max = ceil(p1*(1+wepRPowRng[1]))
    r1 = wepRRange[1]
}
else if wepRRange[2] > 0
{
    s1 = (3-(dualWield*.5))/((wepRSpeed[2]))
    p1 = wepRPow[2]+(wepRStrMult[2]*atkDPS*(s2+1)/5)
    pen1 = wepRPen[2]
    p1min = floor(p1*(1-wepRPowRng[2]))
    p1max = ceil(p1*(1+wepRPowRng[2]))
    r1 = wepRRange[2]
}
else
{
    r1 = 0
}

setTooltip(0,"Increases the accuracy of shots",5)
setTooltip(1,'',3)
setTooltip(2,'',3)
setTooltip(3,'',1)
setTooltip(4,'',1)
setTooltip(5,'',1)
setTooltip(6,'',1)
setTooltip(7,'',1)

draw_set_halign(fa_left)
draw_text(ix,iy+20,"Ranged Skill")
draw_set_halign(fa_center)
draw_text(ix+60,iy+20,string_format(rSkill,2,1))

if r1 > 0
{
    //Weapon Stats
    draw_set_halign(fa_left)
    
    draw_text(ix,iy+32,"Damage")
    draw_text(ix,iy+44,"PEN")
    draw_text(ix,iy+56,"Speed")
    draw_text(ix,iy+68,"Range")
     
    setTooltip(1,"Ranged Damage dealt",3)
    setTooltip(2,"Ranged Penetration",3)
    setTooltip(3,"Ranged Attack Speed in seconds",1)
    setTooltip(4,"Shots suffer damage dropoff beyond weapon range",1)
    
    draw_set_halign(fa_center)
    draw_text(ix+60,iy+32,string(p1min)+' - '+string(p1max))
     
    if pen1/4 < 5
    {
        i = 0
        ax = ix+57-(3*(floor(pen1/4)-1))
        repeat(floor(pen1/4))
        {
            draw_sprite(spr_bigArmIcon,0,ax,iy+45)
            draw_sprite(spr_bigArmIcon,4,ax,iy+45)
            ax += 7
            i += 4
        }
        if pen1 > i
        {
            draw_sprite(spr_bigArmIcon,pen1-i,ax,iy+45)
            draw_sprite(spr_bigArmIcon,4+pen1-i,ax,iy+45)
        }
    }
    else
    {
        draw_text(ix+55,iy+44,string(floor(pen1/4)))
        draw_sprite(spr_bigArmIcon,0,ix+65,iy+45) 
        draw_sprite(spr_bigArmIcon,4,ix+65,iy+45) 
    }
    
    draw_text(ix+60,iy+56,string_format(s1/(haste+atkHaste),2,2))
    draw_text(ix+60,iy+68,string(r1)+"m")
}


#define charInfoCasting
setTooltip(0,"Increases the accuracy of projectile spells and the likelihood of secondary effects",4)
setTooltip(1,"Increases the duration of spells and abilites",2)
setTooltip(2,"Reduces the cooldown of spells and abilities",2)
setTooltip(3,'',1)
setTooltip(4,'',1)
setTooltip(5,'',1)
setTooltip(6,'',1)
setTooltip(7,'',1)

draw_set_halign(fa_left)
draw_text(ix,iy+20,"Casting Skill")
draw_text(ix,iy+32,"Duration")
draw_text(ix,iy+44,"Cooldown")

draw_set_halign(fa_center)
draw_text(ix+60,iy+20,string_format(cSkill,2,1))
draw_text(ix+60,iy+32,"x"+string_format(spellDur,2,2))
draw_text(ix+60,iy+44,"x"+string_format(1/spellCD,2,2))

#define charInfoMisc
setTooltip(0,"Determines how far you can move in combat#Walk: "+string_format(movement,0,1)+"#Run: "+string_format(movement+movementBonus,0,1),4)
setTooltip(1,"Haste reduces delay between actions#"+string_format(100*(1/(haste+movHaste)),0,0)+" % Movement Delay#"+string_format(100*(1/(haste+atkHaste)),0,0)+" % Action Delay",4)
setTooltip(2,"Stamina Recovery in combat over 15 seconds",2)
setTooltip(3,string_format(10000/(100+enc),0,0)+" % Stamina Recovery#"+string_format(100+enc,0,0)+" % Stamina Loss",3)
setTooltip(4,'',1)
setTooltip(5,'',1)
setTooltip(6,'',1)
setTooltip(7,'',1)

draw_set_halign(fa_left)
draw_text(ix,iy+20,"Move")
draw_text(ix,iy+32,"Haste")
draw_text(ix,iy+44,"Recovery")
draw_text(ix,iy+56,"Weight")

draw_set_halign(fa_center)
draw_text(ix+60,iy+20,string_format(movement,0,1)+" / "+string_format(movement+movementBonus,0,1))
draw_text(ix+60,iy+32,string(floor(haste*100)-100)+" %")
draw_text(ix+60,iy+44,string_format(stmRegen/(1+enc*.01),0,1))
draw_text(ix+60,iy+56,string(floor(enc))+" %")

#define newOption
if argument0 != global.optionName1 and argument0 != global.optionName2
{
    i = instance_create(ix,iy,obj_option)
    i.i = argument1
    i.text = argument0
    iy += 13
}
#define charInfoTooltip
var ix = argument0+view_xview[]
var iy = argument1+view_yview[]
var text = argument2
var textLength = argument3

if iy+10+(12*textLength) > view_yview[]+view_hview[]
{
    iy -= (12*textLength)
}

draw_set_alpha(argument4)

draw_set_colour(c_dkgray)
draw_rectangle(ix,iy,ix+110,iy+10+(12*textLength),false)
draw_set_colour(c_ltgray)
draw_rectangle(ix,iy,ix+110,iy+10+(12*textLength),true)

draw_set_colour(c_white)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_font(fnt_tinyText)
draw_text_ext(ix+5,iy+5,text,12,100)


draw_set_alpha(1)

#define setTooltip
ttText[argument0,ii] = argument1
ttLength[argument0,ii] = argument2
