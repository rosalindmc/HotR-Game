//Script for firing a projectile in an arc.
//fireProjectile(Projectile Type, Speed)
//This script is used by the controller

i = global.control

ii = instance_create(i.x,i.y,argument0)
ii.dir = point_direction(i.x,i.y,cHover.x,cHover.y)+((max(random(5/(i.rSkill*i.aim)),0))*choose(-1,1))
ii.owner = i
ii.image_angle = ii.dir
ii.z = i.h+(i.height/2)
        
//Vertical Distance to Cover
vDist = cHover.occupant.h+(cHover.occupant.height/2)-ii.z
//Directional Distance to Cover
dDist = point_distance(cHover.x,cHover.y,i.x,i.y)
//Speed
iSpd = (argument1*metre)*max(1,5-(point_distance(cHover.x,cHover.y,i.x,i.y)/(10*metre)))

ii.spd = iSpd/global.fspd
ii.zspd = (vDist/(dDist/iSpd))/global.fspd+((dDist/iSpd)*(grav*metre/2))
ii.zspd *= (1+((max(random(.1-(i.rSkill*i.aim*.01)),0))*choose(-1,1)))
