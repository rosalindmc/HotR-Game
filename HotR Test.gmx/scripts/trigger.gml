#define trigger
/*
trig = argument0

for(t = 0; t < ds_list_size(trig); t++)
{
    script_execute(ds_list_find_value(trig,t),argument1)
}

#define triggerOnHit
if onHitSize > 0
{
    for(t = 0; t < onHitSize; t++)
    {
        script_execute(onHit[t,0],onHit[t,1],onHit[t,2],onHit[t,3],onHit[t,4],onHit[t,5],false)
    }
}

with(target)
{
    triggerAreHit()
}

#define triggerOnAttack
if onAttackSize > 0
{
    for(t = 0; t < onAttackSize; t++)
    {
        script_execute(onAttack[t,0],onAttack[t,1],onAttack[t,2],onAttack[t,3],onAttack[t,4],onAttack[t,5],false)
    }
}

with(target)
{
    triggerAreAttacked()
}

#define triggerOnWound
if onWoundSize > 0
{
    for(t = 0; t < onWoundSize; t++)
    {
        script_execute(onWound[t,0],onWound[t,1],onWound[t,2],onWound[t,3],onWound[t,4],onWound[t,5],false)
    }
}

#define triggerOnDown
if onDownSize > 0
{
    for(t = 0; t < onDownSize; t++)
    {
        script_execute(onDown[t,0],onDown[t,1],onDown[t,2],onDown[t,3],onDown[t,4],onDown[t,5],false)
    }
}

#define triggerAreHit
if areHitSize > 0
{
    for(t = 0; t < areHitSize; t++)
    {
        script_execute(areHit[t,0],areHit[t,1],areHit[t,2],areHit[t,3],areHit[t,4],areHit[t,5],false)
    }
}

#define triggerAreAttacked
if areAttackedSize > 0
{
    for(t = 0; t < areAttackedSize; t++)
    {
        script_execute(areAttacked[t,0],areAttacked[t,1],areAttacked[t,2],areAttacked[t,3],areAttacked[t,4],areAttacked[t,5],false)
    }
}

#define triggerAreWounded
if areWoundedSize > 0
{
    for(t = 0; t < areWoundedSize; t++)
    {
        script_execute(areWounded[t,0],areWounded[t,1],areWounded[t,2],areWounded[t,3],areWounded[t,4],areWounded[t,5],false)
    }
}

#define triggerOnUpkeep
if onUpkeepSize > 0
{
    for(t = 0; t < onUpkeepSize; t++)
    {
        script_execute(onUpkeep[t,0],onUpkeep[t,1],onUpkeep[t,2],onUpkeep[t,3],onUpkeep[t,4],onUpkeep[t,5],false)
    }
}

#define triggerOnBlock
target = other.id

if onBlockSize > 0
{
    for(t = 0; t < onBlockSize; t++)
    {
        script_execute(onBlock[t,0],onBlock[t,1],onBlock[t,2],onBlock[t,3],onBlock[t,4],onBlock[t,5],false)
    }
}

#define triggerOnMove
if onMoveSize > 0
{
    for(t = 0; t < onMoveSize; t++)
    {
        script_execute(onMove[t,0],onMove[t,1],onMove[t,2],onMove[t,3],onMove[t,4],onMove[t,5],false)
    }
}
