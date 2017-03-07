var gc = global.game_controller;

if(instance_exists(gc))
{
  for(var i = 0; i < array_length_1d(gc.player_registered); i++)
  {
    if(gc.player_registered[i])
    {
      return true;
      exit;
    }
  }
}
return false;
