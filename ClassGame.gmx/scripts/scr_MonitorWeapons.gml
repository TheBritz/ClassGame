if(firing)
{
  firing_timer += 1;
}
else
{
  last_fired_timer += 1;
}

var wep;
for(var i = 0; i < ds_list_size(weapons); i++)
{
  wep = weapons[|i];
  if(wep[WEAPON_ROF] != ROF_SYNCHED_TO_BASIC)
  {
    wep[WEAPON_TIMER] -= 1;
  }
  else
  {
    var basic = weapons[|0];
    if(basic[WEAPON_TIMER] == basic[WEAPON_ROF])
    {
      wep[WEAPON_TIMER] = 0;
    }
    else
    {
      wep[WEAPON_TIMER] = 1000;
    }
  }
  
  if(firing && wep[WEAPON_TIMER] <= 0)
  {
    scr_FireProjectile(wep[WEAPON_TYPE]);
    wep[WEAPON_TIMER] = wep[WEAPON_ROF]; 
  }
  weapons[|i] = wep;   
}
