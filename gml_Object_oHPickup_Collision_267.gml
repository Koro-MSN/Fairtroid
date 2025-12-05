global.playerhealth += 5;

if (global.playerhealth > global.maxhealth)
    global.playerhealth = global.maxhealth;

PlaySoundMono(17);
instance_destroy();
