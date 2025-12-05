shaking = 10;
flashing = 5;

repeat (2)
    instance_create(center_x, center_y, oDebris);

sfx_play(79);

if (myhealth <= 0)
{
    event_user(1);
    sfx_play(80);
}

if (myhealth > 120)
    image_index = 0;

if (myhealth <= 120)
    image_index = 1;

if (myhealth <= 80)
    image_index = 2;
