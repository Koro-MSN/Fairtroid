if (sprite_index == skorp_get_lure(1672) || sprite_index == skorp_get_lure(1675))
{
    image_speed = 0.15;
    
    if (irandom(35) == 0 && cooldown <= 0)
    {
        glowing = 40;
        cooldown = 80;
    }
}

if (cooldown > 0)
    cooldown--;

if (glowing > 0)
    glowing--;

if (state == 100)
{
    switch (floor(image_angle))
    {
        case 270:
        case 90:
            sprite_index = skorp_get_lure(1676);
            break;
        
        default:
            sprite_index = skorp_get_lure(1673);
            break;
    }
    
    if (visible == false)
        instance_destroy();
}
