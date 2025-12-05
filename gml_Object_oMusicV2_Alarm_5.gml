if (!sfx_isplaying(290) && !sfx_isplaying(291))
{
    if (instance_exists(oQueen) || global.ingame == 0)
    {
        mus_play(291);
        oMusicV2.bossbgm = 291;
        mus_stop(345);
        mus_stop(347);
    }
}
else
{
    alarm[5] = 1;
}
