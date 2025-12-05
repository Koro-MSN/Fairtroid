if (!sfx_isplaying(258) && !sfx_isplaying(272))
{
    if ((instance_exists(oMGamma) && oMGamma.myhealth > 0) || global.ingame == 0)
    {
        mus_play(272);
        oMusicV2.bossbgm = 272;
    }
}
else
{
    alarm[2] = 1;
}
