///scr_RequestRespawn(player_index)
var g_c = global.game_controller;
if(g_c.player_lives[my_device] > 0)
{
  g_c.player_respawn_timer[my_device] = g_c.player_respawn_wait;
}
else
{
  //Handle gameover cleanup
  g_c.player_registered[my_device] = false;
  g_c.difficulty_level -= global.player_difficulty_up;
}

