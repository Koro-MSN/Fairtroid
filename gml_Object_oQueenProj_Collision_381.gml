direction = point_direction(oCharacter.x, oCharacter.y - 16, x, y);
speed = 4;

if (!sfx_isplaying(95))
    sfx_play(95);

if (state == 0)
    state = 1;

shaking = 8;
