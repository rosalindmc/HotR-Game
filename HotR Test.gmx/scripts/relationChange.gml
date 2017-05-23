#define relationChange
//relationAdd(char,target,value)

var success = false

for(i = 0; i < argument0.relations; i++)
{
    if argument0.relationship[i] = argument1
    {
        argument0.relationshipValue[i] += argument2
        success = true
    }
}

if success = false
{
    argument0.relationship[argument0.relations] = argument1
    argument0.relationshipValue[argument0.relations] = argument2
    argument0.relationshipType[argument0.relations] = 'Temp'
    argument0.relations += 1
}

#define relationCheckValue
//relationCheck(char,target)
//figures out the relation value between two characters

for(i = 0; i < argument0.relations; i++)
{
    if argument0.relationship[i] = argument1
    {
        return argument0.relationshipValue[i]
    }
}

return 0

#define relationCheckType
//relationCheck(char,target)
//figures out the relation value between two characters

for(i = 0; i < argument0.relations; i++)
{
    if argument0.relationship[i] = argument1
    {
        return argument0.relationshipValue[i]
    }
}

return 0

#define visualizeRelations
var iy = 0

with(obj_menuDivider)
{
    instance_destroy()
}

global.hudY = 0

i = instance_create(430,72+(iy*22),obj_menuDivider)
i.text = 'Relationships'
i.hudY = iy
iy += 1

for(i = 0; i < global.charSelect.relations; i++)
{
    ii = instance_create(330,72+(iy*22),obj_relation)
    ii.relation = global.charSelect.relationship[i]
    ii.relationValue = global.charSelect.relationshipValue[i]
    ii.relationType =global.charSelect.relationshipType[i]
    ii.hudY = iy
    iy += 1
}

//Add Personality Traits

global.hudYMax = iy
