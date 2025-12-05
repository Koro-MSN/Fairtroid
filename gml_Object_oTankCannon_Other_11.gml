if (damaged == 0)
{
    damaged = 1;
    
    with (oTankArm)
        event_user(1);
    
    image_speed = 0;
    alarm[0] = 15;
    sfx_play(80);
    
    repeat (3)
    {
        var boom = make_explosion1(x + irandom_range(10, -10), y + irandom_range(10, -10));
        boom.depth = depth - 1;
    }
}
