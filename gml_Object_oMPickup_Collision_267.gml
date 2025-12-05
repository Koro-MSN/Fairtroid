global.missiles += 2;

if (global.missiles > global.maxmissiles)
    global.missiles = global.maxmissiles;

PlaySoundMono(18);
instance_destroy();
