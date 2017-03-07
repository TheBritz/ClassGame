var accuracy = accuracy_range[0] + accuracy_frame_decrease*firing_entity.firing_timer;

my_color = firing_entity.my_color;

if(accuracy > accuracy_range[1])
{
  accuracy = accuracy_range[1];
}

direction = 90 + random_range(-accuracy, accuracy);
