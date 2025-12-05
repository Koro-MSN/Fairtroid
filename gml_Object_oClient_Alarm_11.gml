var playerState;

if (instance_exists(oCharacter))
    playerState = oCharacter.sball;
else
    playerState = 0;

buffer_delete(buffer);
var size = 1024;
var type = 1;
var alignment = 1;
buffer = buffer_create(size, type, alignment);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 101);
buffer_write(buffer, buffer_u8, global.clientID);
buffer_write(buffer, buffer_s16, room);
buffer_write(buffer, buffer_s16, posX);
buffer_write(buffer, buffer_s16, posY);
buffer_write(buffer, buffer_u8, global.sax);
buffer_write(buffer, buffer_u8, global.spectator);
buffer_write(buffer, buffer_u8, playerState);
buffer_write(buffer, buffer_u8, global.itemstaken);
buffer_write(buffer, buffer_bool, global.showHealthIndicatorsTimer > 0);
var bufferSize = buffer_tell(buffer);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_s32, bufferSize);
buffer_write(buffer, buffer_u8, 101);
buffer_write(buffer, buffer_u8, global.clientID);
buffer_write(buffer, buffer_s16, room);
buffer_write(buffer, buffer_s16, posX);
buffer_write(buffer, buffer_s16, posY);
buffer_write(buffer, buffer_u8, global.sax);
buffer_write(buffer, buffer_u8, global.spectator);
buffer_write(buffer, buffer_u8, playerState);
buffer_write(buffer, buffer_u8, global.itemstaken);
buffer_write(buffer, buffer_bool, global.showHealthIndicatorsTimer > 0);
var result = network_send_packet(socket, buffer, buffer_tell(buffer));
alarm[11] = 20;
