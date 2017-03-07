var formation_pool = ds_list_create();
var coords, coords2, coords3;
var formation;
 
coords[0] = -32;
coords[1] = -32;
coords2[0] = 32;
coords2[1] = -32;
formation = ds_list_create();
ds_list_add(formation, coords, coords2);
ds_list_add(formation_pool, formation);

coords = undefined;
coords2 = undefined;

coords[0] = 0;
coords[1] = -48;
coords2[0] = 0; 
coords2[1] = -96;
formation = ds_list_create();
ds_list_add(formation, coords, coords2);
ds_list_add(formation_pool, formation);

coords = undefined;
coords2 = undefined;
coords3 = undefined;

coords[0] = -48;
coords[1] = -16;
coords2[0] = 48;
coords2[1] = -16;
coords3[0] = 0;
coords3[1] = -48;
formation = ds_list_create();
ds_list_add(formation, coords, coords2, coords3);
ds_list_add(formation_pool, formation);

coords = undefined;
coords2 = undefined;
coords3 = undefined;

coords[0] = -48;
coords[1] = 48;
coords2[0] = 48;
coords2[1] = 48;
formation = ds_list_create();
ds_list_add(formation, coords, coords2);
ds_list_add(formation_pool, formation);

coords[0] = -48;
coords[1] = 0;
coords2[0] = 48;
coords2[1] = 0;
formation = ds_list_create();
ds_list_add(formation, coords, coords2);
ds_list_add(formation_pool, formation);

return formation_pool;

