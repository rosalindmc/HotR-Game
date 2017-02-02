#define levelControl
//Level Control(char)
c = argument0
i = instance_create(view_wview/2,view_hview/2,obj_levelUpScreen)

c.attributePoint += .5
c.combatTalentPoint += 1
c.travelTalentPoint += .5

if c.attributePoint >= 1
{
    c.attributePoint -= 1
    i.attribute += 1
}

if c.combatTalentPoint >= 1
{
    c.combatTalentPoint -= 1
    i.combat += 1
}

if c.travelTalentPoint >= 1
{
    c.travelTalentPoint -= 1
    i.travel += 1
}

c.lifePoint += c.classLife
c.staminaPoint += c.classStamina

c.mSkill += c.classMSkill
i.mSkill = c.classMSkill

c.rSkill += c.classRSkill
i.rSkill = c.classRSkill

c.cSkill += c.classCSkill
i.cSkill = c.classCSkill

c.levelPending -= 1

repeat(3)
{
    switch(irandom(4))
    {
    case 0: c.lifePoint += .1 break
    case 1: c.staminaPoint += .1 break
    case 2: c.mSkill += .1
    i.mSkill += .1 break
    case 3: c.rSkill += .1
    i.rSkill += .1 break
    case 4: c.cSkill += .1
    i.cSkill += .1 break
    }
}

if c.lifePoint >= 1
{
    c.lifePoint -= 1
    c.life += 1
    i.life += 1
}

if c.staminaPoint >= 1
{
    c.staminaPoint -= 1
    c.stamina += 1
    i.stamina += 1
}


#define talentChoices


#define levelStats
