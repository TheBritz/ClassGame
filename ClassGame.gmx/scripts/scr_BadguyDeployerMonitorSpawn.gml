spawn_timer -= 1;
var leader = noone;
if(spawn_timer <= 0)
{
  //Spawn a new badguy
  if(number > 0)
  {
    leader = scr_BadguyCreate(x, y, badguy, path, path_speed, noone, undefined, undefined, image_angle_locked);
    number -= 1;
  }
  
  //Fill in this formation if the deployer has one
  if(!is_undefined(formation))
  {
    for(var i = 0; i < ds_list_size(formation); i++)
    {
      var coords = formation[|i];
      if(number > 0)
      {
        scr_BadguyCreate(x + coords[0], y + coords[1], badguy, path, path_speed, noone, coords, formation_locked, image_angle_locked);
        number -= 1;
      }
    }
  }
  spawn_timer = spawn_interval;
}

if(number <= 0)
{
  instance_destroy();
}
