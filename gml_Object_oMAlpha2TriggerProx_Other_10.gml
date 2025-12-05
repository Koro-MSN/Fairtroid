met = instance_create(x, y, oMAlpha);
met.facing = facing;
met.myid = myid;
met.spriteset = 1;
met.sprite_index = sMAlpha2;

with (met)
{
    set_monster_vars(myid);
    shell = instance_create(x, y, oMAlphaShell);
    shell.damage = damage;
    shell.hpush = 5;
    shell.vpush = -3;
}

if (global.monstersalive == 0)
{
    sfx_stop(130);
    sfx_play(130);
    mus_alpha_monster();
}

with (oMAlphaTriggerProx)
    alarm[0] = 60;

global.monstersalive += 1;
instance_destroy();
