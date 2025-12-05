if (room == rm_credits)
{
    buffer_delete(buffer);
    var size = 1024;
    var type = 1;
    var alignment = 1;
    buffer = buffer_create(size, type, alignment);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 19);
    buffer_write(buffer, buffer_s32, global.gametime);
    buffer_write(buffer, buffer_u8, global.clientID);
    var bufferSize = buffer_tell(buffer);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_s32, bufferSize);
    buffer_write(buffer, buffer_u8, 19);
    buffer_write(buffer, buffer_s32, global.gametime);
    buffer_write(buffer, buffer_u8, global.clientID);
    var result = network_send_packet(socket, buffer, buffer_tell(buffer));
}

if (room == rm_score)
    resetTimer = 5;
