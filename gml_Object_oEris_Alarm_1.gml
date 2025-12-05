var sfx = choose(0, 1, 2);

if (inrange)
{
    switch (sfx)
    {
        case 0:
            sfx_play(329);
            break;
        
        case 2:
            sfx_play(330);
            break;
        
        case 3:
            sfx_play(331);
            break;
    }
}

alarm[1] = 60 + random(90);
