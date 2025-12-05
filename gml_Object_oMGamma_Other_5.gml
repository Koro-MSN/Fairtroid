if (global.ingame == 1)
{
    global.monstersalive = 0;
    mus_stop(272);
    
    with (oMusicV2)
    {
        alarm[2] = -1;
        bossbgm = 0;
    }
    
    mus_current_fadein();
}
