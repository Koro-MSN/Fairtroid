if (global.event[304] == 1 && !fadeout)
{
    alarm[0] = 8;
    sfx_stop(187);
    sfx_play(187);
    
    with (other.id)
    {
        speed = 0.1;
        flash = 1;
    }
    
    fadeout = 1;
}
