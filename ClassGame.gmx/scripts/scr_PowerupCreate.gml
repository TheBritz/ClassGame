///scr_PowerupCreate(x, y, powerup_type, for_player)

var pup = instance_create(argument[0], argument[1], argument[2]);

var i = 3;
if(argument_count > i)
{ 
  pup.for_player = argument[i++];
  if(pup.for_player > 0)
  {
    pup.my_color = global.hud.player_colors[pup.for_player - 1];
    pup.for_player_index = asset_get_index("obj_player" + string(pup.for_player));
  }
}



