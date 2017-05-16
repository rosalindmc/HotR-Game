switch(argument0)
{
case 0:
room_height = 1200
room_width = 2200

switch(global.timeOfDay)
{
    case 1:
    global.ambientR = .9
    global.ambientG = .9
    global.ambientB = .9
    global.sightBase = 30
    global.accuracyBase = 1
    break
    case 2:
    global.ambientR = .75
    global.ambientG = .5
    global.ambientB = .5
    global.sightBase = 25
    global.accuracyBase = .95
    break
    case 3:
    global.ambientR = .1
    global.ambientG = .1
    global.ambientB = .3
    global.sightBase = 10
    global.accuracyBase = .9
    break
}

//Tile Creation
mapHeight = 40
mapWidth = 40
mapDepth = 6
break

case 1:
//Map Gen
combatHillsGen()
combatMudGen()

with(obj_tile)
{
    alarm[0] = 2
}

//Deploy
i = 0

repeat(ds_list_size(global.attacker.party))
{
    ii = instance_create(0,0,obj_character)
    ii.isoX = i+20-floor(ds_list_size(global.attacker.party)/2)
    ii.isoY = obj_control.mapWidth-2
    ii.isoZ = obj_control.map[ii.isoX,ii.isoY].heightMap
    ii.isoTile = obj_control.map[ii.isoX+((ii.isoZ)*obj_control.mapWidth),ii.isoY]
    ii.currentTile = ii.isoTile
    ii.sightTile = obj_control.map[ii.isoX+((ii.isoZ+1)*obj_control.mapWidth),ii.isoY]
    ii.x = ii.isoTile.x
    ii.y = ii.isoTile.y
    ii.h = ii.isoTile.h
    ii.isoTile.occupant = ii
    
    ii.important = true
    ii.team = 1
    
    if global.attacker.playerControl = true
    {
        ii.controlScript = controlPlayer
        ii.player = true
        obj_camera.x = ii.x
        obj_camera.y = ii.y
    }
    
    ii.owner = ds_list_find_value(global.attacker.party,i)
    with(ii)
    {
        importCharacter(owner)
    }
    
    i += 1
}

i = 0

repeat(ds_list_size(global.defender.party))
{
    ii = instance_create(0,0,obj_character)
    ii.isoX = i+20-floor(ds_list_size(global.defender.party)/2)
    ii.isoY = 20
    ii.isoZ = obj_control.map[ii.isoX,ii.isoY].heightMap
    ii.cFacing = 180
    ii.facing = 180
    ii.isoTile = obj_control.map[ii.isoX+((ii.isoZ)*obj_control.mapWidth),ii.isoY]
    ii.currentTile = ii.isoTile
    ii.sightTile = obj_control.map[ii.isoX+((ii.isoZ+1)*obj_control.mapWidth),ii.isoY]
    ii.x = ii.isoTile.x
    ii.y = ii.isoTile.y
    ii.h = ii.isoTile.h
    ii.isoTile.occupant = ii
    
    ii.team = 2
    ii.important = true
    ii.owner = ds_list_find_value(global.defender.party,i)
    
    if global.defender.playerControl = true
    {
        ii.controlScript = controlPlayer
        ii.player = true
        obj_camera.x = ii.x
        obj_camera.y = ii.y
    }
    
    with(ii)
    {
        importCharacter(owner)
    }
    
    i += 1
}
break
}
