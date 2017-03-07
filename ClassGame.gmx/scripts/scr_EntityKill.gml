///scr_EntityKill(entity_instance)
var entity = argument0;

with(entity)
{
  if(object_is_ancestor(entity.object_index, obj_badguy))
  {
    global.game_controller.kill_count += 1;
  }
  instance_destroy();
  instance_create(x, y, explosion_obj);
}
