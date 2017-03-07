///scr_PowerupRemove(powerup, loser)

var pup = argument0;
var loser = argument1;
var ind_to_remove;
var wep_entry;

var pup_name = object_get_name(pup);
var wep_name = string_replace(pup_name, "powerup", "projectile");
var wep_ind = asset_get_index(wep_name);

for(var i = 0; i < ds_list_size(loser.weapons); i++)
{
  wep_entry = loser.weapons[|i];
  if(wep_entry[WEAPON_TYPE] == wep_ind)
  {
    ds_list_delete(loser.weapons, i);
    break;
  }
}


