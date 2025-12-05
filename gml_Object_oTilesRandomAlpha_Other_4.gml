tile_list = ds_list_create();
var t = 0;

for (var i = 0; i < (room_width / 16); i += 1)
{
    for (var j = 0; j < (room_height / 16); j += 1)
    {
        var t_id = tile_layer_find(layer, i * 16, j * 16);
        
        if (t_id != -1)
        {
            ds_list_add(tile_list, t_id);
            t += 1;
        }
    }
}
