#define levelControl
//Level Control(char)
c = argument0
i = instance_create(view_wview/2,view_hview/2,obj_levelUpScreen)
i.char = c

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

global.talentChoice = 0

#define attributeChoices
c[0] = irandom(4)
while(c[0] = char.lastAttribute)
{
    c[0] = irandom(4)
}

c[1] = irandom(4)
while(c[1] = char.lastAttribute or c[1] = c[0])
{
    c[1] = irandom(4)
}

c[2] = irandom(4)
while(c[2] = char.lastAttribute or c[2] = c[0] or c[1] = c[2])
{
    c[2] = irandom(4)
}

iy = ystart-20
i = instance_create(xstart-95,iy,obj_levelUpChoice)
i.image_index = c[0]
i.owner = id

iy += 20
i = instance_create(xstart-95,iy,obj_levelUpChoice)
i.image_index = c[1]
i.owner = id

iy += 20
i = instance_create(xstart-95,iy,obj_levelUpChoice)
i.image_index = c[2]
i.owner = id




#define talentChoices
//Create Weighted Legal talent list
list = ds_list_create()

if argument0 = 1
{combatTalentList()}
else if argument0 = 2
{travelTalentList()}

ds_list_shuffle(list)

tc = min(2+floor(char.cunning/4),ds_list_size(list))
iy = ystart-20

iii = 0
for(i = 0; i < tc and iii < ds_list_size(list); iii++)
{
    if checkList(ds_list_find_value(list,iii),i) 
    {
        pTalent[i] = ds_list_find_value(list,iii)
        
        ii = instance_create(xstart-95,iy,obj_levelUpChoice)
        ii.owner = id
        ii.script = pTalent[i]
        
        l = talentLevel(pTalent[i])
        
        with(ii)
        {
            script_execute(other.pTalent[other.i],1,other.l)
        }
        iy += 20
        i += 1
    }
}

#define finalizeChoice
if argument0 = 1
{
    switch(global.talentChoice.image_index)
    {
    case 0: char.might += 1 char.lastAttribute = 0 break
    case 1: char.grace += 1 char.lastAttribute = 1 break
    case 2: char.cunning += 1 char.lastAttribute = 2 break
    case 3: char.will += 1 char.lastAttribute = 3 break
    case 4: char.fellowship += 1 char.lastAttribute = 4 break
    }
}
else
{
    gainTalent(global.talentChoice.script,global.talentChoice.branch)
}

#define combatTalentList
//Talent Trees
talentPrereq(treeStrength,0)
talentPrereq(treeToughness,0)
talentPrereq(treeMartial,0)
talentPrereq(treeMobility,0)
talentPrereq(treeInsight,0)
//talentPrereq(treeSubterfuge,0)
//talentPrereq(treeFrenzy,0)
talentPrereq(treeDiscipline,0)
//talentPrereq(treeLeadership,0)
//talentPrereq(treeDaring,0)

repeat(3)
{
    talentPrereq(branchBreaker,treeStrength)
    talentPrereq(branchCrunch,treeStrength)
    talentPrereq(branchSmash,treeStrength)
    talentPrereq(branchReadyForMore,treeStrength)
        
    talentPrereq(branchVigour,treeToughness)
    talentPrereq(branchMightyBlock,treeToughness)
    talentPrereq(branchThickSkin,treeToughness)
    talentPrereq(branchMightyHealth,treeToughness)
    
    talentPrereq(branchAccuracy,treeMartial)
    talentPrereq(branchCombatDrill,treeMartial)
    talentPrereq(branchSlayer,treeMartial)
    talentPrereq(branchOpportunist,treeMartial)
        
    talentPrereq(branchEvasion,treeMobility)
    talentPrereq(branchLightningStrike,treeMobility)
    talentPrereq(branchMarathon,treeMobility)
    talentPrereq(branchHardTarget,treeMobility)
    talentPrereq(branchMomentum,treeMobility)
    
    talentPrereq(branchVigiliance,treeInsight)
    talentPrereq(branchPassArmour,treeInsight)
    talentPrereq(branchHeightAdvantage,treeInsight)
    
    talentPrereq(branchShadowStep,treeSubterfuge)
    talentPrereq(branchAmbush,treeSubterfuge)
    talentPrereq(branchIncognito,treeSubterfuge)
    
    talentPrereq(branchUnstoppable,treeFrenzy)
    talentPrereq(branchBloodlust,treeFrenzy)
    talentPrereq(branchWrath,treeFrenzy)
    
    talentPrereq(branchBlockTraining,treeDiscipline)
    talentPrereq(branchConfidence,treeDiscipline)
    talentPrereq(branchShakeItOff,treeDiscipline)
    
    talentPrereq(branchLeadByExample,treeLeadership)
    talentPrereq(branchUnity,treeLeadership)
    talentPrereq(branchRally,treeLeadership)
    
    talentPrereq(branchBravery,treeDaring)
    talentPrereq(branchAgainstTheOdds,treeDaring)
    talentPrereq(branchFlourish,treeDaring)
    
}

for(ttt = 0; ttt < 8; ttt++)
{
    if char.talent[ttt,0] != emptyTalent
    {
        if ds_list_find_index(list,char.talent[ttt,0]) != -1
        {
            talentPrereq(char.talent[ttt,0],0)
            talentPrereq(char.talent[ttt,0],0)
        }
    }
}



#define travelTalentList
//Talent Trees
talentPrereq(treeThievery,0)
talentPrereq(treeDiplomacy,0)
talentPrereq(treeSurvival,0)
talentPrereq(treeStreetwise,0)
talentPrereq(treeKnowledge,0)
talentPrereq(treeAlchemy,0)
talentPrereq(treeMedicine,0)
talentPrereq(treePerform,0)

for(ttt = 0; ttt < 8; ttt++)
{
    if char.talent[ttt,0] != emptyTalent
    {
        if ds_list_find_index(list,char.talent[ttt,0]) != -1
        {
            talentPrereq(char.talent[ttt,0],0)
            talentPrereq(char.talent[ttt,0],0)
        }
    }
}

#define checkList
success = true
for(p = 0; p < argument1; p++)
{
    if pTalent[p] = argument0
    {
        success = false
    }
}

return success

#define talentPrereq
//talentPrereq(talenttoadd,branch?)

if argument1 = 0
{
    if script_execute(argument0,2)
    {
        l4 = false
        openSlot = false
        
        for(t = 0; t < 8; t++)
        {
            if char.talent[t,0] = argument0
            {
                if char.talent[t,5] = 4
                {
                    l4 = 1
                }
                else
                {
                    l4 = 2
                }
            }
            else if char.talent[t,0] = emptyTalent
            {
                openSlot = true
            }
        }
        
        if (l4 = false and openSlot = true) or  l4 = 2
        {
            ds_list_add(list,argument0)
        }   
    }   
}
else
{
    if script_execute(argument0,2)
    {
        openSlot = false
        noRepeat = true
    
        for(t = 0; t < 8; t++)
        {
            if char.talent[t,0] = argument1
            {
                for(tt = 1; tt <= 3; tt++)
                {
                    if char.talent[t,tt] = emptyBranch
                    {
                        openSlot = true
                    }
                    if char.talent[t,tt] = argument0
                    {
                        noRepeat = false
                    }
                }
            }
        }
        
        if noRepeat = true and openSlot = true
        {
            ds_list_add(list,argument0)
        }
    }
}

#define talentLevel
for(t = 0; t < 8; t++)
{
    if char.talent[t,0] = argument0
    {
        return 1+char.talent[t,5]
    }
}
return 1

#define gainTalent
if argument1 = false
{
    for(t = 0; t < 8; t++)
    {
        if char.talent[t,0] = emptyTalent or char.talent[t,0] = argument0
        {
            char.talent[t,0] = argument0
            char.talent[t,5] += 1
            exit
        }
    }
}
else
{
    for(t = 0; t < 8; t++)
    {
        if char.talent[t,0] = argument1
        {
            for(tt = 1; tt <= 3; tt++)
            {
                if char.talent[t,tt] = emptyBranch
                {
                    char.talent[t,tt] = argument0
                    exit
                }
            }
        }
    }
}