if (oMusicV2.bossbgm == 0 && !sfx_isplaying(oMusicV2.currentbgm) && oMusicV2.currentbgm != 0)
    mus_play(oMusicV2.currentbgm);

if (oMusicV2.bossbgm != 0 && !sfx_isplaying(oMusicV2.bossbgm))
    mus_play(oMusicV2.bossbgm);

alarm[2] = 30;
