///scr_ChooseAndRemoveFromList(list)

var list = argument0;
var choice = scr_ChooseFromList(list);

if(!is_undefined(choice))
{  
  ds_list_delete(list, ds_list_find_index(list, choice)); 
}

return choice;
