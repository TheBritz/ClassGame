playspace_width = round(room_height*1.15)
sidepanel_width = (room_width - playspace_width)/2;
sidepanel_height = room_height;

panel_1_x = 0;
panel_1_y = 0;

panel_2_x = room_width - sidepanel_width;
panel_2_y = 0;

var x_shift = 12;
var y_shift = 20;
var y_shift_bottom = 40;

player_msg_x[0] = panel_1_x + x_shift;
player_msg_x[1] = panel_2_x + x_shift;
player_msg_x[2] = player_msg_x[0];
player_msg_x[3] = player_msg_x[1];

player_msg_y[0] = panel_1_y + y_shift;
player_msg_y[1] = player_msg_y[0];
player_msg_y[2] = sidepanel_height - y_shift - y_shift_bottom;
player_msg_y[3] = player_msg_y[2];

player_select_x[0] = panel_1_x + sidepanel_width/2;
player_select_x[1] = panel_2_x + sidepanel_width/2;
player_select_x[2] = player_select_x[0];
player_select_x[3] = player_select_x[1];

player_select_y[0] = player_msg_y[0] + 100;
player_select_y[1] = player_msg_y[1] + 100;
player_select_y[2] = player_msg_y[2] - 100;
player_select_y[3] = player_msg_y[3] - 100;
