var tbg;

if (global.timeofday == 0)
    tbg = 16;

if (global.timeofday == 1)
    tbg = 18;

if (global.timeofday == 2)
    tbg = 17;

tileid = tile_add(tbg, argument0, argument1, 16, 16, x, y, -150);
