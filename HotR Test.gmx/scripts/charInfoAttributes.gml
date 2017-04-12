#define charInfoAttributes
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
draw_set_halign(fa_left)
draw_text(ix,iy+20,"Life")  
draw_text(ix,iy+32,"Regen")  
draw_text(ix,iy+44,"Mitigation")  
draw_text(ix,iy+56,"Dodge")
draw_text(ix,iy+68,"Armour")

draw_set_halign(fa_center)
draw_text(ix+60,iy+20,lifeMax)
draw_text(ix+60,iy+32,string_format(lifeRegen,0,1)+" /15s")
draw_text(ix+60,iy+44,string_format(100-(100/(1+dmgMitigation)),0,0)+" %")
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
}
else if hasShield = true
{
    draw_text(ix,iy+68,"Block")
    draw_text(ix,iy+80,"Speed")    
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

draw_set_halign(fa_left)
draw_text(ix,iy+20,"Ranged Skill")
draw_set_halign(fa_center)
draw_text(ix+60,iy+20,string_format(rSkill,2,1))

if wepRRange[1] > 0 or wepRRange[2] > 0
{
    //Weapon Stats
    draw_set_halign(fa_left)
    
    draw_text(ix,iy+32,"Damage")
    draw_text(ix,iy+44,"PEN")
    draw_text(ix,iy+56,"Speed")
    draw_text(ix,iy+68,"Range")
     
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
draw_set_halign(fa_left)
draw_text(ix,iy+20,"Casting Skill")
draw_text(ix,iy+32,"Duration")
draw_text(ix,iy+44,"Cooldown")

draw_set_halign(fa_center)
draw_text(ix+60,iy+20,string_format(cSkill,2,1))
draw_text(ix+60,iy+32,"x"+string_format(spellDur,2,2))
draw_text(ix+60,iy+44,"x"+string_format(1/spellCD,2,2))

#define charInfoMisc
draw_set_halign(fa_left)
draw_text(ix,iy+20,"Move")
draw_text(ix,iy+32,"Haste")
draw_text(ix,iy+44,"Recovery")
draw_text(ix,iy+56,"Weight")

draw_set_halign(fa_center)
draw_text(ix+60,iy+20,string_format(movement,0,1)+" / "+string_format(movement+movementBonus,0,1))
draw_text(ix+60,iy+32,string(floor(haste*100)-100)+" %")
draw_text(ix+60,iy+44,string_format(stmRegen/(1+enc*.01),0,1)+" /15s")
draw_text(ix+60,iy+56,string(floor(enc))+" %")

#define newOption
if argument0 != global.optionName1 and argument0 != global.optionName2
{
    i = instance_create(ix,iy,obj_option)
    i.i = argument1
    i.text = argument0
    iy += 13
}