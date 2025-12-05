if (state != 100)
{
    flashing = 10;
    
    if (hp <= 0)
    {
        hp = 0;
        state = 1;
        statetime = 0;
        sfx_stop(82);
        sfx_play(82);
    }
    else
    {
        sfx_play(328);
    }
}
