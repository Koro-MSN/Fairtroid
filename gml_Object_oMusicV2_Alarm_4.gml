if (!sfx_isplaying(258) && !sfx_isplaying(284))
{
    if ((instance_exists(oMOmega) && oMOmega.myhealth > 0) || global.ingame == 0)
    {
        mus_play(284);
        oMusicV2.bossbgm = 284;
    }
}
else
{
    alarm[4] = 1;
}
