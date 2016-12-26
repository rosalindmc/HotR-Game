//Set Up Battle 
//battleSetup()     Will feature variables later

attacker = argument0
defender = argument1

instance_deactivate_object(obj_overworldParent)
room_height = 1200
room_width = 2200
instance_create(0,0,obj_control)

//Temporary Party Making

//Create Characters TEMP
i = 0

repeat(array_length_1d(attacker.party))
{
    ii = instance_create((room_width/2)+(i*20)-(i*20),10+(i*10)+(i*10),obj_character)
    ii.isoX = i
    ii.isoY = 0
    ii.isoZ = 0
    ii.isoTile = obj_control.map[i,0]
    ii.x = obj_control.map[i,0].x
    ii.y = obj_control.map[i,0].y
    obj_control.map[i,0].occupant = ii
    
    ii.team = 1
    ii.player = true
    ii.owner = attacker.party[i]
    with(ii)
    {
        importCharacter(owner)
    }
    
    i += 1
}

i = 0

repeat(array_length_1d(defender.party))
{
    ii = instance_create((room_width/2)+(i*20)-(i*20),10+(i*10)+(i*10),obj_character)
    ii.isoX = i
    ii.isoY = obj_control.mapWidth-1
    ii.isoZ = 0
    ii.isoTile = obj_control.map[i,obj_control.mapWidth-1]
    ii.x = obj_control.map[i,obj_control.mapWidth-1].x
    ii.y = obj_control.map[i,obj_control.mapWidth-1].y
    obj_control.map[i,obj_control.mapWidth-1].occupant = ii
    
    ii.team = 2
    ii.owner = defender.party[i]
    with(ii)
    {
        importCharacter(owner)
    }
    
    i += 1
}

