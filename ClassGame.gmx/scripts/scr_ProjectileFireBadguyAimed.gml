///scr_ProjectileFireBadguyAimed()
direction = 270;

var target = noone;
if(irandom(1) == 0)
{
  target = instance_nearest(x, y, obj_player);    
}
else
{
  var ind = irandom(instance_number(obj_player) - 1);
  
  if(ind >= 0)
  {
    target = instance_find(obj_player, ind);
  }
}

if(instance_exists(target))
{
  direction = point_direction(x, y, target.x, target.y);
}

