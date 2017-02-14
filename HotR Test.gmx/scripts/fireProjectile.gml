//Script for firing a projectile in an arc.
//fireProjectile(Projectile Type, Speed)
//This script is used by the controller

i = obj_control

ii = instance_create(x,y,argument0)
ii.dir = point_direction(x,y,i.cHover.x,i.cHover.y)+((max(random(5/(rSkill*aim)),0))*choose(-1,1))
ii.owner = id
ii.image_angle = ii.dir
ii.z = h+(height/2)
        
//Vertical Distance to Cover
vDist = i.cHover.occupant.h+(i.cHover.occupant.height/2)-ii.z
//Directional Distance to Cover
dDist = point_distance(i.cHover.x,i.cHover.y,x,y)
//Speed
iSpd = (argument1*metre)*max(1,5-(point_distance(i.cHover.x,i.cHover.y,x,y)/(10*metre)))

ii.spd = iSpd/global.fspd
ii.zspd = (vDist/(dDist/iSpd))/global.fspd+((dDist/iSpd)*(grav*metre/2))
ii.zspd *= (1+((max(random(.1-(rSkill*aim*.01)),0))*choose(-1,1)))
