//Below is particle code:


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_smoke);
part_type_size(particle1,0.20,0.20,0,0);
part_type_scale(particle1,1,1);
part_type_color1(particle1,65535);
part_type_alpha2(particle1,1,0);
part_type_speed(particle1,3,6,0,0);
part_type_direction(particle1,90,90,0,10);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,20,20,1);
part_type_blend(particle1,1);
part_type_life(particle1,6,12);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,-30,30,0,0,ps_shape_ellipse,1);
part_emitter_stream(Sname,emitter1,particle1,5);
