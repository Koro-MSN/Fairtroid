var projx = x + lengthdir_x(60, direction);
var projy = y + lengthdir_y(60, direction);
var proj = instance_create(projx, projy, oTankProjectile);
proj.direction = direction;
proj.image_angle = direction;
proj.speed = 4;
proj.type = beamType;

if (beamType == "ICE")
{
    proj.sprite_index = sTankProj2;
}
else if (beamType == "WAVE")
{
    proj.depth = -200;
    proj.sprite_index = sTankProj3;
}

sfx_play(71);
