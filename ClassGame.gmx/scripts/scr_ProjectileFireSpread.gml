direction = 90 + spread_amount;
image_angle = direction;

var proj = scr_FireProjectile(obj_projectile_basic);
proj.direction = 90 - spread_amount;
proj.image_angle = proj.direction
proj.firing_entity = firing_entity;
