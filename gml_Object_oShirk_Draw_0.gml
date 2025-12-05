armor1 = 353;
armor2 = 354;
turn = 355;
armor1turn = 356;
armor2turn = 357;

if (frozen)
{
    myspr = frozenspr;
    armor1 = 1762;
    armor2 = 1763;
    turn = 1766;
    armor1turn = 1764;
    armor2turn = 1765;
}
else
{
    myspr = sprite_index;
    armor1 = 353;
    armor2 = 354;
    turn = 355;
    armor1turn = 356;
    armor2turn = 357;
}

image_xscale = facing;

if (frozen == 0)
    image_speed = 0.5;
else
    image_speed = 0;

if (!flashing)
{
    if (turning == 0)
    {
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha);
        
        if (myhealth > shell1hp)
            draw_sprite_ext(armor1, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha);
        
        if (myhealth > shell2hp)
            draw_sprite_ext(armor2, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha);
        
        if (frozen > 0 && frozen < (freezetime * 0.2))
        {
            draw_set_blend_mode(bm_add);
            draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.35));
            
            if (myhealth > shell1hp)
                draw_sprite_ext(armor1, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.35));
            
            if (myhealth > shell2hp)
                draw_sprite_ext(armor2, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.35));
            
            draw_set_blend_mode(bm_normal);
        }
    }
    
    if (turning > 0)
    {
        draw_sprite_ext(turn, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha);
        
        if (myhealth > shell1hp)
            draw_sprite_ext(armor1turn, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha);
        
        if (myhealth > shell2hp)
            draw_sprite_ext(armor2turn, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha);
        
        if (frozen > 0 && frozen < (freezetime * 0.2))
        {
            draw_set_blend_mode(bm_add);
            draw_sprite_ext(turn, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.35));
            
            if (myhealth > shell1hp)
                draw_sprite_ext(armor1turn, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.35));
            
            if (myhealth > shell2hp)
                draw_sprite_ext(armor2turn, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.35));
            
            draw_set_blend_mode(bm_normal);
        }
    }
}

if (flashing)
{
    if (turning == 0)
    {
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1);
        
        if (myhealth > shell1hp)
            draw_sprite_ext(armor1, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1);
        
        if (myhealth > shell2hp)
            draw_sprite_ext(armor2, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1);
        
        draw_set_blend_mode(bm_add);
        
        repeat (2)
        {
            draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
            
            if (myhealth > shell1hp)
                draw_sprite_ext(armor1, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
            
            if (myhealth > shell2hp)
                draw_sprite_ext(armor2, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
        }
        
        draw_set_blend_mode(bm_normal);
    }
    
    if (turning > 0)
    {
        draw_sprite_ext(turn, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1);
        
        if (myhealth > shell1hp)
            draw_sprite_ext(armor1turn, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1);
        
        if (myhealth > shell2hp)
            draw_sprite_ext(armor2turn, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1);
        
        draw_set_blend_mode(bm_add);
        
        repeat (2)
        {
            draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
            
            if (myhealth > shell1hp)
                draw_sprite_ext(armor1turn, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
            
            if (myhealth > shell2hp)
                draw_sprite_ext(armor2turn, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
        }
        
        draw_set_blend_mode(bm_normal);
    }
}
