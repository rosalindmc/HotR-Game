switch(argument0)
{
case 0:
room_height = 1200
room_width = 2200

//Tile Creation
mapHeight = 20
mapWidth = 20
mapDepth = 10

break

case 1:
//Map Gen
combatHillsGen()
combatMudGen()

//Deploy
i = 0

repeat(ds_list_size(global.attacker.party))
{
    ii = instance_create(0,0,obj_character)
    ii.isoX = i
    ii.isoY = obj_control.mapWidth-1
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
    ii.isoX = i
    ii.isoY = 0
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
