if (global.maxsmissilesPrev != global.maxsmissiles)
{
    buffer_delete(buffer);
    var size = 1024;
    var type = 1;
    var alignment = 1;
    buffer = buffer_create(size, type, alignment);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 12);
    buffer_write(buffer, buffer_u8, global.maxsmissiles);
    buffer_write(buffer, buffer_u8, global.clientID);
    var bufferSize = buffer_tell(buffer);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_s32, bufferSize);
    buffer_write(buffer, buffer_u8, 12);
    buffer_write(buffer, buffer_u8, global.maxsmissiles);
    buffer_write(buffer, buffer_u8, global.clientID);
    var result = network_send_packet(socket, buffer, buffer_tell(buffer));
    maxsmissilesChanged = 1;
}

if (!maxsmissilesChanged)
    alarm[9] = 10;

if (maxsmissilesChanged)
{
    maxsmissilesChanged = 0;
    alarm[9] = 75;
}
