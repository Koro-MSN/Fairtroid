global.smissiles += 1;

if (global.smissiles > global.maxsmissiles)
    global.smissiles = global.maxsmissiles;

PlaySoundMono(358);
instance_destroy();
