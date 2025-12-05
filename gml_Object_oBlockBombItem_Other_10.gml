block = instance_create(x, y, oDestroyedBlock);
block.type = 1;
block.regentime = regentime;
block.alarm[0] = regentime;
block.link_id = link_id;
block.delay = delay;

with (block)
    event_user(1);

if (global.item[oControl.mod_158] == 0)
    instance_create(x, y + 16, scr_itemsopen(oControl.mod_158));

sfx_stop(209);
sfx_play(209);
instance_destroy();
