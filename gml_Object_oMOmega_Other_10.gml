myhealth -= dmg;
flashing = flashtime;
canbehit = 0;

if (myhealth <= 0)
{
    state = 100;
    statetime = 0;
    alarm[10] = 1;
    alarm[11] = 160;
    event_user(2);
    mus_fadeout(284);
    oMusicV2.bossbgm = 0;
    global.metdead[myid] = 1;
    global.monstersleft -= 1;
    global.monstersarea -= 1;
    check_areaclear();
    global.dmap[mapposx, mapposy] = 11;
    
    with (oControl)
        event_user(2);
    
    dead = 1;
}

if (myhealth > 0)
{
    if (dmg < 100)
    {
        PlaySoundMono(166);
        roaring = 30;
    }
    else
    {
        PlaySoundMono(167);
        roaring = 160;
    }
}
