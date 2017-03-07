///scr_FireProjectile(projectile_type)
//Should be running in an entity instance
var proj_type = argument0;

var proj = instance_create(x, y, proj_type);
proj.my_color = my_color;
proj.firing_entity = id;
with(proj)
{
  if(!is_undefined(my_fire_event))
  {   
    script_execute(my_fire_event, my_fire_args);            
  }
  
  if(!is_undefined(my_sound))
  {
    audio_emitter_pitch(global.game_controller.audio_emitter, random_range(.9, 1.1))
    audio_play_sound_on(global.game_controller.audio_emitter, my_sound, false, 0);
  }
}

return proj;
