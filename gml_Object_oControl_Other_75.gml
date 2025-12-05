if (os_type == os_linux)
{
    var event = ds_map_find_value(async_load, "event_type");
    
    if (event == "gamepad discovered")
        global.opjoyid = ds_map_find_value(async_load, "pad_index");
    else if (event == "gamepad lost")
        global.opjoyid = 1;
}
