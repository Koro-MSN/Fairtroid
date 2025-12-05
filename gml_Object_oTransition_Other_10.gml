if (instance_exists(oCharacter))
{
    oCharacter.x = -100;
    oCharacter.y = -100;
}

if (global.widescreen_enabled != oControl.widescreen && oControl.widescreen_switch == 1)
{
    with (oControl)
    {
        widescreen = global.widescreen_enabled;
        
        if (widescreen)
            widescreen_space = 106;
        
        if (global.opfullscreen == 0)
        {
            set_window_scale(window_get_height() / 240);
            window_set_position(window_get_x() + ((53 - (global.widescreen_enabled * 106)) * (window_get_height() / 240)), window_get_y());
        }
    }
    
    oControl.widescreen_switch = 0;
}

if (!instance_exists(oClient) && global.targetroom == 17)
    global.targetroom = global.lastroom;

if (instance_exists(oClient) && ds_list_size(oClient.posData) == 0 && global.targetroom == 17)
    global.targetroom = global.lastroom;

if (global.spectatorIndex != -1 && global.targetroom == 17)
{
    if (instance_exists(oClient))
    {
        if (ds_list_size(oClient.posData) > 0)
        {
            for (var f = 0; f < ds_list_size(oClient.posData); f++)
            {
                var arrPos = ds_list_find_value(oClient.posData, f);
                var arrPosRoom = arrPos[4];
                
                if (f == global.spectatorIndex)
                    global.targetroom = arrPosRoom;
            }
        }
    }
}

if (global.targetroom != 17)
    room_goto(global.targetroom);
