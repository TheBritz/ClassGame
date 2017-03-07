var base_name = "snd_taunt";
var list = ds_list_create();
var n = 0;
var path_ind, full_name;

do
{
  var full_name = base_name + string(n)
  path_ind = asset_get_index(full_name);     
  if(path_ind != -1)
  {
    ds_list_add(list, path_ind);
  }
  n++;
}until(path_ind = -1)   

return list;
