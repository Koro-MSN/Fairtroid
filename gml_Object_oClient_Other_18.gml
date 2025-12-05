if (!global.saxmode || global.spectator)
    exit;

var size = 1024;
var type = 1;
var alignment = 1;
buffer10 = buffer_create(size, type, alignment);
buffer_seek(buffer10, buffer_seek_start, 0);
buffer_write(buffer10, buffer_u8, 35);
buffer_write(buffer10, buffer_s16, global.mapposx);
buffer_write(buffer10, buffer_s16, global.mapposy);
var bufferSize = buffer_tell(buffer10);
buffer_seek(buffer10, buffer_seek_start, 0);
buffer_write(buffer10, buffer_s32, bufferSize);
buffer_write(buffer10, buffer_u8, 35);
buffer_write(buffer10, buffer_s16, global.mapposx);
buffer_write(buffer10, buffer_s16, global.mapposy);
var result = network_send_packet(socket, buffer10, buffer_tell(buffer10));
buffer_delete(buffer10);
