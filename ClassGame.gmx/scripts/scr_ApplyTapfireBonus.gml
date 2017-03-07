///scr_ApplyTapfireBonus(weapons_list)
var weps = argument0;
var wep;
for(var i = 0; i < ds_list_size(weps); i++)
{
  wep = weps[|i];
  wep[WEAPON_TIMER] -= wep[WEAPON_TIMER] * wep[WEAPON_TAPBONUS];
  weps[|i] = wep;
}

