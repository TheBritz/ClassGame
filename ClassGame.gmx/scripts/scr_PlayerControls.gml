var axis_v, axis_h;

axis_v = gamepad_axis_value(my_device, gp_axislv);
axis_h = gamepad_axis_value(my_device, gp_axislh);

vspeed = axis_v*move_speed/2;
if(vspeed > 0)
{
  vspeed += axis_v*move_speed/4;
}
else
{
  vspeed += axis_v*move_speed/8;
}

hspeed = axis_h*move_speed;

if(gamepad_button_check_pressed(my_device, global.button_fire[my_device]))
{
  firing = true;
  firing_timer = 0;
}
else if(gamepad_button_check_released(my_device, global.button_fire[my_device]))
{
  firing = false;
  scr_ApplyTapfireBonus(weapons);
}
