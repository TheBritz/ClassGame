///scr_BadguyCreate(x, y, badguy_type, path, path_speed, formation_leader, formation_coords, formation_locked, image_angle_locked)

var bg = instance_create(argument[0], argument[1], argument[2]);

with(bg)
{
  var i = 3;
  if(argument_count > i)
  {
    path = argument[i++];
  }
  
  if(argument_count > i)
  {
    path_speed = argument[i++];
  }
  
  if(argument_count > i)
  {
    formation_leader = argument[i++];
  }
  
  if(argument_count > i)
  {
    formation_coords = argument[i++];
  }
  
  if(argument_count > i)
  {
    formation_locked = argument[i++];
  }
  
  if(!is_undefined(path))
  {
    path_start(path, path_speed, path_action_stop, false);
  }
  
  var g_c = global.game_controller;

  var shoot_mod_mult = g_c.difficulty_shoot_mult_mod * (g_c.difficulty_level - 1) + 1;
  shoot_odds = ceil(shoot_odds/shoot_mod_mult);
  shoot_odds -= g_c.difficulty_shoot_add_mod * (g_c.difficulty_level - 1);
  
  var hp_mod_mult = diff_hp_mult * (g_c.difficulty_level - 1) + 1;
  hp *= hp_mod_mult;
  hp += diff_hp_add * (g_c.difficulty_level - 1);
  
  var speed_mod_mult = g_c.difficulty_speed_mult_mod * (g_c.difficulty_level - 1) + 1;
  path_speed *= speed_mod_mult;
  path_speed += g_c.difficulty_speed_add_mod * (g_c.difficulty_level - 1);
}

return bg;
