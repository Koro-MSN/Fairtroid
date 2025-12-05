flashing = 5;
fxtimer = 0;
PlaySoundMono(248);

if (myhealth <= 0)
{
    state = 100;
    statetime = 0;
    alarm[10] = 1;
    alarm[11] = 300;
    mus_fadeout(270);
    oMusicV2.bossbgm = 0;
    global.event[152] = 2;
    dead = 1;
}
