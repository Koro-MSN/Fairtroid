mus_stop_all();

with (oMusicV2)
    alarm[3] = 60;

if (!sfx_isplaying(258))
    mus_play_once(258);
