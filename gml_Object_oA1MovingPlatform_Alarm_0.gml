if (x < 624)
{
    x += 1;
    alarm[0] = 3;
    smk = instance_create(x - 14 - random(10), 50, oFXAnimSpark);
    smk.image_speed = 0.7;
    smk.additive = 0;
    smk.sprite_index = sSmoke1;
    smk.image_alpha = 0.6;
    
    if (!sfx_isplaying(203))
        sfx_loop(203);
}
else
{
    alarm[1] = 10;
    sfx_stop(203);
}
