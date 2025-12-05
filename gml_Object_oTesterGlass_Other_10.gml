flashing = 5;
sfx_stop(314);
sfx_play(314);

if (myhealth <= 0)
{
    enabled = 0;
    
    if (global.difficulty >= 2)
        alarm[0] = 400;
    
    sfx_play(313);
}
