if (global.ingame == 1 && state != 0)
{
    mus_stop(284);
    
    with (oMusicV2)
    {
        alarm[4] = -1;
        bossbgm = 0;
    }
    
    mus_current_fadein();
}
