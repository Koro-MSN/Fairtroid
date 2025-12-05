block = instance_create(x, y, oDestroyedBlock);
block.type = 4;
block.regentime = regentime;
block.alarm[0] = regentime;
block.link_id = link_id;
block.delay = delay;

if (DEPTH != 0)
{
    block.depth = DEPTH;
    block.DEPTH = DEPTH;
}

with (block)
    event_user(1);

sfx_stop(209);
sfx_play(209);
instance_destroy();
