if (instance_exists(block))
{
    with (block)
        instance_destroy();
}

sfx_play(226);
open = 1;

if (event > 0)
{
    if (global.event[event] == 0)
        global.event[event] = 1;
}
