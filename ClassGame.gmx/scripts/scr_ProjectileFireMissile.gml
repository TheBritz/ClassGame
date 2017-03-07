direction = 90 + launch_angle;
image_angle = direction;
my_color = firing_entity.my_color;

var twin = instance_copy(false);
with(twin)
{
  twin.direction = 90 - launch_angle
  image_angle = direction;
}


