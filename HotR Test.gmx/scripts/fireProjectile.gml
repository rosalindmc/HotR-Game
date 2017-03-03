//Script for firing a projectile in an arc.
//fireProjectile(Projectile Type, Speed)
//This script is used by the controller

i = obj_control

ii = instance_create(x,y,argument0)
ii.dir = point_direction(x,y,target.x,target.y)+((max(random(5/(max(rSkill,0.5)*aim)),0))*choose(-1,1))
ii.owner = id
ii.image_angle = ii.dir
ii.z = h+(height*.75)
        
//Vertical Distance to Cover
vDist = target.h+(target.height*.5)-ii.z
//Directional Distance to Cover
dDist = point_distance(target.x,target.y,x,y)
//Speed
iSpd = (argument1*metre)*max(1,5-(point_distance(target.x,target.y,x,y)/(10*metre)))

ii.spd = iSpd/global.fspd
ii.zspd = (vDist/(dDist/iSpd))/global.fspd+((dDist/iSpd)*(grav*metre/2))
ii.zspd *= (1+((max(random(.1-(rSkill*aim*.01)),0))*choose(-1,1)))

global.follow = ii
