expl = instance_create(x, y, oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
expl.sprite_index = sExpl1;
expl.depth = -150;
sfx_play(59);
instance_destroy();
