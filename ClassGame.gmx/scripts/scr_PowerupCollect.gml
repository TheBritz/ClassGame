///scr_PowerupCollect(powerup, collector)

var pup = argument0;
var collector = argument1;
var added = false;

//Play pickup sound
//audio_emitter_pitch(global.game_controller.audio_emitter_no_pitch_shift, 1)
audio_play_sound_on(global.game_controller.audio_emitter_no_pitch_shift, pup.my_sound, false, 0);

//Look for powerup in collector's powerup list
var pup_entry;
var has_pup = false;
for(var i = 0; i < ds_list_size(collector.powerups); i++)
{
  pup_entry = collector.powerups[|i];
  if(pup_entry[0] == pup.object_index)
  {
    has_pup = true;
    break;
  } 
}

if(!has_pup)
{    
  switch(pup.object_index)
  {
    case obj_powerup_spread:
    {  
      var wep_entry;
      wep_entry[WEAPON_TYPE] = obj_projectile_spread;
      wep_entry[WEAPON_ROF] = ROF_SYNCHED_TO_BASIC;
      wep_entry[WEAPON_TIMER] = 1000;
      wep_entry[WEAPON_TAPBONUS] = 0;
      
      break;
    }
    case obj_powerup_gatling:
    {
      var wep_entry;
      wep_entry[WEAPON_TYPE] = obj_projectile_gatling;
      wep_entry[WEAPON_ROF] = 4;
      wep_entry[WEAPON_TIMER] = 0;
      wep_entry[WEAPON_TAPBONUS] = 0;      
      
      break;
    }  
    case obj_powerup_missile:
    {
      var wep_entry;
      wep_entry[WEAPON_TYPE] = obj_projectile_missile;
      wep_entry[WEAPON_ROF] = 45;
      wep_entry[WEAPON_TIMER] = 0;
      wep_entry[WEAPON_TAPBONUS] = 0;      
    }
  }
  
  ds_list_add(collector.weapons, wep_entry);
  
  with(pup)
  {
    var surf = surface_create(sprite_get_width(sprite_index), sprite_get_height(sprite_index));
    surface_set_target(surf);
    draw_sprite(sprite_index, image_index, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
    draw_sprite_ext(letter_spr, image_index, sprite_get_xoffset(letter_spr), sprite_get_yoffset(sprite_index), 1, 1, 0, collector.my_color, 1);
    var spr = sprite_create_from_surface(surf, 0, 0, sprite_get_width(sprite_index), sprite_get_height(sprite_index), false, false, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
    surface_free(surf);
    surface_reset_target();
    var pup_entry;
    pup_entry[0] = pup.object_index;
    pup_entry[1] = spr;
    ds_list_add(collector.powerups, pup_entry);   
  }
  
}
else
{
  collector.score += points;
}

if(added)
{
  
}
