var sprite = argument0;
var image = argument1;
var posx = argument2;
var posy = argument3;
var axis = argument4;
var wavelength = argument5;
var amplitude = argument6;
var phase = argument7;
var xscale = argument8;
var yscale = argument9;
var blend = argument10;
var alpha = argument11;
var width = sprite_get_width(sprite);
var height = sprite_get_height(sprite);
var xoff = sprite_get_xoffset(sprite);
var yoff = sprite_get_yoffset(sprite);
var size;

if (axis)
    size = height;
else
    size = width;

for (var i = 0; i < size; i += 1)
{
    var shift = amplitude * sin((2 * pi) * ((i / wavelength) + phase));
    
    if (axis)
    {
        var sx = (xscale * (shift - xoff)) + posx;
        var sy = (yscale * (i - yoff)) + posy;
        draw_sprite_part_ext(sprite, image, 0, i, width, 1, sx, sy, xscale, yscale, blend, alpha);
    }
    else
    {
        var sx = (xscale * (i - xoff)) + posx;
        var sy = (yscale * (shift - yoff)) + posy;
        draw_sprite_part_ext(sprite, image, i, 0, 1, height, sx, sy, xscale, yscale, blend, alpha);
    }
}
