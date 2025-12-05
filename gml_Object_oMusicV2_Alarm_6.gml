if (!instance_exists(oQueenFireball) && !sfx_isplaying(345))
{
    if (instance_exists(oQueen) || global.ingame == 0)
    {
        mus_play(345);
        oMusicV2.bossbgm = 345;
        mus_stop(291);
        mus_stop(347);
    }
}
else
{
    alarm[6] = 1;
}
