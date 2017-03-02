#define animTypes


#define typeAxe
//Animation Profile for axes
//typeAxe(how to use)
//0 - hold animation, 1 - melee animation, 2 - ranged animation

switch(argument0)
{
case 0: return(animMeleeHold) break
case 1: return(choose(animDownSwing,animCrossSwing)) break
case 2: break
}
#define typeShield
//Animation Profile for axes
//typeAxe(how to use)
//0 - hold animation, 1 - melee animation, 2 - ranged animation

switch(argument0)
{
case 0: return(animShield) break
case 1: return(choose(animDownSwing,animCrossSwing)) break
case 2: break
}
#define typeBow
//Animation Profile for axes
//typeBow(how to use)
//0 - hold animation, 1 - melee animation, 2 - ranged animation

switch(argument0)
{
case 0: return(animMeleeHold) break
case 1: return(choose(animDownSwing,animCrossSwing)) break
case 2: return(animFireBow) break
}
