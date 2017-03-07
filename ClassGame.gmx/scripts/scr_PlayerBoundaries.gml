var hud = global.hud;

if(instance_exists(hud))
{
  if(x < hud.playspace_bl)
  {
    x = hud.playspace_bl;
  }
  else if(x > hud.playspace_br)
  {
    x = hud.playspace_br;
  }
  
  if(y < hud.playspace_bu)
  {
    y = hud.playspace_bu;
  }
  else if(y > hud.playspace_bd)
  {
    y = hud.playspace_bd;
  }
}
