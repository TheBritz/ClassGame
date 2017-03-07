///scr_IterateProgression(progress_level)

difficulty_level += global.level_difficulty_up;

switch(argument0)
{
  case 1:
  {
    ds_list_add(badguy_pool, obj_badguy2, obj_badguy2);
    ds_list_add(powerup_pool, obj_powerup_spread, obj_powerup_missile);
    break;
  }
  
  case 2:
  {
    ds_list_add(badguy_pool, obj_badguy4, obj_badguy4);
    ds_list_add(powerup_pool, obj_powerup_missile, obj_powerup_gatling);
    miniboss_number++;
    break;
  }
  
  case 3:
  {
    miniboss_number++;
    break;
  }
  
  case 4:
  {
    //Game is won, stop spawning badguys by setting miniboss_active to true
    miniboss_active = true;
  }
}
