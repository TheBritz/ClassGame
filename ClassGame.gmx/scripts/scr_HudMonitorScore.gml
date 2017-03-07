var player_obj_name = "obj_player";
var player_index, player_instance;
for(var i = 0; i < array_length_1d(player_msg); i++)
{
  player_index = asset_get_index(player_obj_name + string(i + 1));
  if(instance_exists(player_index))
  {
    player_instance = instance_find(player_index, 0);
    player_msg[i] = ": " + string(ceil(player_instance.score));
  }
}
