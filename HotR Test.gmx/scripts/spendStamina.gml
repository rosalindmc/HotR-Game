#define spendStamina
argument0.stm = max(0,argument0.stm-argument1)


#define loseStamina
var iii = argument1*(1+(argument0.enc*.01));

argument0.stm = max(0,argument0.stm-iii)

if floor(argument0.stm/5) != floor((argument0.stm+iii)/5) and dead = false
{
    staminaCheck()
}

#define gainStamina
var iii = argument1/(1+(argument0.enc*.01));

argument0.stm = min(argument0.stmMax,argument0.stm+iii)

if floor(argument0.stm/5) != floor((argument0.stm-iii)/5) and dead = false
{
    staminaCheck()
}

#define healLife
var iii = min(argument0.lifeMax-argument0.life,argument1)
if iii != 0
{
    ii = instance_create(argument0.x,argument0.y-argument0.h-argument0.height,obj_descriptor)
    ii.text = iii
    ii.font = fnt_damage
    ii.colour1 = ltBlue
    ii.colour2 = iceBlue
    
    argument0.life += iii  
}

#define woundLife
//victim, cause, amount, type
var ii, iii;

ii = instance_create(argument0.x,argument0.y-argument0.h-argument0.height,obj_descriptor)
ii.font = fnt_damage

iii = (argument2/(1+argument0.dmgMitigation))
if argument0.resist[argument3] >= 0
{iii = (iii/(1+(argument0.resist[argument3]/5)))}
else
{iii = (iii*(1-(argument0.resist[argument3]/5)))}
iii = floor(iii+random(.99))

if iii > argument0.life
{
    iii = argument0.life+floor((iii-argument0.life)/2)
}

switch(argument3)
{
    case typeImpact:
    ii.colour1 = c_black
    ii.colour2 = c_white
    ii.text = string(iii)+' Impact'
    break
    case typeRend:
    ii.colour1 = c_black
    ii.colour2 = c_white
    ii.text = string(iii)+' Rend'
    break
    case typePierce:
    ii.colour1 = c_black
    ii.colour2 = c_white
    ii.text = string(iii)+' Pierce'
    break
    case typeBlood:
    ii.colour1 = dkRed
    ii.colour2 = c_red
    ii.text = string(iii)+' Blood'
    break
}

//Result
if argument0.immune[argument3] = true
{
    ii.text = 'Immune'
}
else if iii != 0
{    
    argument0.life -= iii
}
else
{
    ii.text = 'No Damage'
}

//Life Check
if argument0.life <= 0
{
    with(argument1)
    {
        if argument0.expEarned = false
        {
            owner.experience += (argument0.expOnKill)*(1-((cunning-8)*.03))
            checkLevelUp(owner)
        }
        
        gainMorale(.2)
        
        triggerOnDown(false)
        actorDie(argument0)
    }
}