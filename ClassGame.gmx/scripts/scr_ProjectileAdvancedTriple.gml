scr_ProjectileFireBadguyAimed();

var proj = scr_FireProjectile(obj_projectile_badguy_basic);
proj.direction = direction + spread_amount;

proj = scr_FireProjectile(obj_projectile_badguy_basic);
proj.direction = direction - spread_amount;
