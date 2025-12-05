link_tile(72, 112, 144);
regentime = -1;

if (global.event[253] == 1)
{
    tile_delete(tileid);
    instance_destroy();
}
