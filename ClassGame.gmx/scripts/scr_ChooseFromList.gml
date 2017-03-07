///scr_ChooseFromList(list)
var list = argument0;

var ind = irandom(ds_list_size(list) - 1);

if(ind != -1)
{
  return list[|ind];
}
else
{
  return undefined;
}
