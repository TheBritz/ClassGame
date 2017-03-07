///scr_BuildBadguyPathListMap(badguy_types...)

var map = ds_map_create();
var base_path_name = "path_bg";
var base_badguy_name = "obj_badguy";
var badguy_number, badguy_name, path_ind, list;
for(var i = 0; i < argument_count; i++)
{
  var test = argument[i];
  var test1 = obj_badguy4;
  var test2 = obj_badguy3;
  badguy_name = object_get_name(argument[i]);
  badguy_number = string_replace(badguy_name, base_badguy_name, "");
  list = ds_list_create();
  var n = 0;
  do
  {
    var full_name = base_path_name + badguy_number + "_" + string(n)
    path_ind = asset_get_index(full_name);     
    if(path_ind != -1)
    {
      ds_list_add(list, path_ind);
    }
    n++;
  }until(path_ind = -1)    
  ds_map_add(map, argument[i], list); 
}

return map;
