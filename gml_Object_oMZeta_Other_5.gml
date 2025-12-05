if (global.ingame == 1 && state != 0)
{
    mus_stop(279);
    
    with (oMusicV2)
    {
        alarm[3] = -1;
        bossbgm = 0;
    }
    
    mus_current_fadein();
}
