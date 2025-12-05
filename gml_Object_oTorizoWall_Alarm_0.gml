tile_layer_shift(-102, -1, 0);
xoff -= 1;

if (xoff > 16)
    alarm[0] = 3;

if (xoff == 351)
    sfx_loop(203);
else if (xoff == 16)
    sfx_stop(203);

if (oControl.widescreen)
{
    if (oCamera.limit < ((oControl.widescreen_space / 2) + 160))
        oCamera.limit++;
    
    oCamera.limit = floor(oCamera.limit);
}
