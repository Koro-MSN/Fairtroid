visible = true;

switch (floor(image_angle))
{
    case 270:
    case 90:
        sprite_index = skorp_get_lure(1677);
        break;
    
    default:
        sprite_index = skorp_get_lure(1674);
        break;
}

image_index = 0;
