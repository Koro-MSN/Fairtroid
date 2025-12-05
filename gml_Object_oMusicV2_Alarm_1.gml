if (!sfx_isplaying(258) && !sfx_isplaying(259))
{
    if ((instance_exists(oMAlpha) && oMAlpha.myhealth > 0) || global.ingame == 0)
    {
        mus_play(259);
        oMusicV2.bossbgm = 259;
    }
}
else
{
    alarm[1] = 1;
}
