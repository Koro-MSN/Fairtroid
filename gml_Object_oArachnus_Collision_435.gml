if (state == 4 && vspeed >= 0 && other.image_index < 3)
{
    vspeed = -4 - (hitcount * 1);
    gravity = 0.2;
    
    if (hitcount < 4)
        hitcount += 1;
    
    sfx_play(223);
    PlaySoundMono(220);
    alarm[1] = 1;
    flashing = 15;
}
else if (angry < 100 && flashing == 0)
{
    angry += 2;
    event_user(0);
}
