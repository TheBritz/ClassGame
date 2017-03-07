///scr_BadguyDeployerCreate(xx, yy, badguy_type, number, spawn_interval, formation, path, path_speed, formation_locked, image_angle_locked)
var xx = argument[0];
var yy = argument[1];

var deployer = instance_create(xx, yy, obj_badguy_deployer);

with(deployer)
{
  badguy = argument[2];
  number = argument[3]
  spawn_interval = argument[4];
  var i = 5;
  if(argument_count > i)
  {
    formation = argument[i++];
  }
  else
  {
    scr_GetFormationFromBadguyType(badguy);
  }
  
  if(argument_count > i)
  {
    path = argument[i++];
  }
  else
  {
    scr_GetPathFromBadguyType(badguy);  
  }
  
  if(argument_count > i)
  {
    path_speed = argument[i++];
  }
  
  if(argument_count > i)
  {
    formation_locked = argument[i++];
  }
  
  if(argument_count > i)
  {
    image_angle_locked = argument[i++];
  }
}

return deployer;

