if (!instance_exists(oQueenFireball) && !sfx_isplaying(347))
{
    if (instance_exists(oQueen) || global.ingame == 0)
    {
        mus_play(347);
        oMusicV2.bossbgm = 347;
        mus_stop(291);
        mus_stop(345);
    }
}
else
{
    alarm[7] = 1;
}
