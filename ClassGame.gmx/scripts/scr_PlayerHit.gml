///scr_PlayerHit(player_instance)

var player = argument0;

with(player)
{
  if(!invulnerable)
  {  
    audio_play_sound_on(global.game_controller.audio_emitter_no_pitch_shift, snd_proj_player_damage, false, 0);
    if(ds_list_size(weapons) <= 1)
    {
      scr_EntityKill(player);
    }
    else
    {
      var lost_pup = powerups[|ds_list_size(powerups) - 1];
      scr_PowerupRemove(lost_pup[0], id);
      ds_list_delete(powerups, ds_list_size(powerups) - 1);
      invulnerable = true;
      alarm[0] = hit_i_frames;
    }  
  }
}

