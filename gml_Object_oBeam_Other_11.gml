rspark = instance_create(x, y, oFXAnimSparkItem);
rspark.sprite_index = sReflectSpark;
rspark.image_speed = 0.5;
rspark.depth = -1000;
sfx_stop(95);
sfx_play(95);
light = instance_create(x, y, oFadeLight32);
light.fadespeed = 0.1;
light.alarm[0] = 2;
