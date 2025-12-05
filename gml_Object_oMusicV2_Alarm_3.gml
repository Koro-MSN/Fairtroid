if (!sfx_isplaying(258) && !sfx_isplaying(279))
{
    if ((instance_exists(oMZeta) && oMZeta.myhealth > 0) || global.ingame == 0)
    {
        mus_play(279);
        oMusicV2.bossbgm = 279;
    }
}
else
{
    alarm[3] = 1;
}
