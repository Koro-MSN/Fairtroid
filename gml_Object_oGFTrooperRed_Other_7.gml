if (shots > 0)
{
    shot = instance_create(x + 20, y - 21, oGFTBullet1);
    shot.direction = random(3);
    shot.image_angle = shot.direction;
    shot.speed = 6;
    sfx_stop(332);
    sfx_play(332);
    shots -= 1;
}
else
{
    image_speed = 0;
    image_index = 0;
    alarm[1] = 30;
}
