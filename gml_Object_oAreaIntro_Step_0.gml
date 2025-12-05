if (state == 0 || !global.ingame || room == rm_transition)
{
    image_speed = 0;
    exit;
}
else if (pause[floor(image_index)] > 0)
{
    image_speed = 0;
    image_index = floor(image_index);
    pause[floor(image_index)]--;
}
else
{
    image_speed = 0.25;
}
