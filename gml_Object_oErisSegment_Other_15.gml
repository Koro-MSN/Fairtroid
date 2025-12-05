repeat (4 + floor(random(4)))
{
    var bubble = instance_create(x, y, oLBubble);
    
    if (instance_exists(bubble))
    {
        bubble.hspeed = random_range(-1, 1);
        bubble.vspeed = -random(0.4);
    }
}
