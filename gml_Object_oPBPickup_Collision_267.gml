global.pbombs += 1;

if (global.pbombs > global.maxpbombs)
    global.pbombs = global.maxpbombs;

PlaySoundMono(360);
instance_destroy();
