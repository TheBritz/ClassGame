///scr_GamepadConnectChange(device, new_state)
var device = argument0;
if(argument1)
{
  //Gamepad was just connected
  global.hud.player_msg[device] = global.hud.msg_press_start; 
}
else
{
  //Gemapad was disconnected
  global.hud.player_msg[device] = global.hud.msg_conn_gp;
}
