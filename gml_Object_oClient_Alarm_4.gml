var v = 0;

for (var f = 0; f < array_length_1d(global.metdead); f++)
{
    if (global.metdeadPrev[f] != global.metdead[f])
    {
        global.metdeadChanges[v, 0] = global.metdead[f];
        global.metdeadChanges[v, 1] = f;
        ds_list_set(global.onlineMetdead, 0, global.metdeadChanges);
        metdeadChanged = 1;
        v++;
    }
}

if (metdeadChanged)
{
    buffer_delete(buffer);
    var size = 1024;
    var type = 1;
    var alignment = 1;
    buffer = buffer_create(size, type, alignment);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 7);
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineMetdead)));
    buffer_write(buffer, buffer_u8, global.clientID);
    var bufferSize = buffer_tell(buffer);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_s32, bufferSize);
    buffer_write(buffer, buffer_u8, 7);
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineMetdead)));
    buffer_write(buffer, buffer_u8, global.clientID);
    var result = network_send_packet(socket, buffer, buffer_tell(buffer));
}

if (!metdeadChanged)
    alarm[4] = 10;

if (metdeadChanged)
{
    metdeadChanged = 0;
    alarm[4] = 75;
}
