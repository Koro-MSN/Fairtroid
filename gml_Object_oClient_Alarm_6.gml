var v = 0;

if (global.ingame)
{
    for (var i = 0; i < array_height_2d(global.dmap); i++)
    {
        for (var f = 0; f < array_length_2d(global.dmap, i); f++)
        {
            if (global.dmapPrev[i, f] != global.dmap[i, f])
            {
                mapChanged = 1;
                break;
            }
        }
    }
}

if (mapChanged)
{
    buffer_delete(buffer);
    var size = 1024;
    var type = 1;
    var alignment = 1;
    buffer = buffer_create(size, type, alignment);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 9);
    var tileCount = 0;
    
    for (var i = 0; i < array_height_2d(global.dmap); i++)
    {
        for (var f = 0; f < array_length_2d(global.dmap, i); f++)
        {
            if (global.dmapPrev[i, f] != global.dmap[i, f])
            {
                buffer_write(buffer, buffer_u8, i);
                buffer_write(buffer, buffer_u8, f);
                buffer_write(buffer, buffer_u8, global.dmap[i, f]);
                tileCount++;
            }
        }
    }
    
    buffer_write(buffer, buffer_u16, tileCount);
    buffer_write(buffer, buffer_u8, global.clientID);
    var bufferSize = buffer_tell(buffer);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_s32, bufferSize);
    buffer_write(buffer, buffer_u8, 9);
    buffer_write(buffer, buffer_u16, tileCount);
    
    for (var i = 0; i < array_height_2d(global.dmap); i++)
    {
        for (var f = 0; f < array_length_2d(global.dmap, i); f++)
        {
            if (global.dmapPrev[i, f] != global.dmap[i, f])
            {
                buffer_write(buffer, buffer_u8, i);
                buffer_write(buffer, buffer_u8, f);
                buffer_write(buffer, buffer_u8, global.dmap[i, f]);
            }
        }
    }
    
    buffer_write(buffer, buffer_u8, global.clientID);
    var result = network_send_packet(socket, buffer, buffer_tell(buffer));
}

if (!mapChanged)
    alarm[6] = 10;

if (mapChanged)
{
    mapChanged = 0;
    alarm[6] = 75;
}
