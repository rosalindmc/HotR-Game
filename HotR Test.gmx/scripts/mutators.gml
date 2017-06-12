#define mutators

#define emptyMutator
//Apply the effects/draw tooltip of the mutator


#define runeLahab
//Flame Rune
switch(argument0)
{
case 0:     //Weapon
    if argument1 = 0{
        addItemTooltip('Lahab Rune','Lahab Rune#Bonus Fire damage',2,ltBlue)
    }
    else{
        wepPart[i] = true
        part_type_shape(wepPs[i],pt_shape_pixel)
        part_type_size(wepPs[i],1,1,0,0)
        part_type_scale(wepPs[i],1,1)
        part_type_color3(wepPs[i],c_yellow,c_orange,c_red)
        part_type_alpha2(wepPs[i],1,0)
        part_type_speed(wepPs[i],60/global.fspd,120/global.fspd,0,0)
        part_type_direction(wepPs[i],90,90,0,10)
        part_type_gravity(wepPs[i],0,270)
        part_type_orientation(wepPs[i],0,0,0,0,false)
        //part_type_blend(wepPart[i],0)
        part_type_life(wepPs[i],global.fspd*.05,global.fspd*.15)
    }
break

case 1:     //Armour
    if argument1 = 0{
        addItemTooltip('Lahab Rune','Lahab Rune#Inflict fire damage on melee attackers',3,ltBlue)
    }
    else{
        
    }
break
}