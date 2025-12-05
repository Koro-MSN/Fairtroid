if (vspeed != 0)
{
    repeat (4)
    {
        expl = instance_create(x, y + 2, oFXAnimSpark);
        expl.image_speed = 0.2;
        expl.additive = 0;
        expl.sprite_index = sWaterParticle;
        expl.direction = 45 + random(90);
        expl.speed = 1 + random(1);
        expl.gravity_direction = 270;
        expl.gravity = 0.2;
    }
    
    snd = floor(random(3));
    
    switch (snd)
    {
        case 0:
            PlaySoundVisible(228, x, y);
            break;
        
        case 1:
            PlaySoundVisible(229, x, y);
            break;
        
        case 2:
            PlaySoundVisible(230, x, y);
            break;
    }
    
    instance_create(startx, starty, oWaterDrop);
    instance_destroy();
}
