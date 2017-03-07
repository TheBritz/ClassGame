///scr_CycleListStep(list, index, cycle_speed)

var list = argument0;
var index = argument1;
var cycle_speed = argument2;

index += cycle_speed;
var ind = floor(index);

if(ind > ds_list_size(list) - 1)
{
  index = 0;
  ind = 0;
}

var ret_arr;
if(ind < 0)
{
  ret_arr[0] = undefined;
}
else
{
  ret_arr[0] = list[|ind];
}

ret_arr[1] = index;

return ret_arr;


