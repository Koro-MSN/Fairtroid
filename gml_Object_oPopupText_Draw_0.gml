draw_set_font(global.fontGUI2);
draw_set_halign(fa_right);

if (room == rm_controller || room == rm_options)
    draw_cool_text(view_xview[0] + 316, view_yview[0] + 226, text, 0, 16777215, 16777215, image_alpha);
else
    draw_cool_text(view_xview[0] + 316 + (53 * oControl.widescreen), view_yview[0] + 226, text, 0, 16777215, 16777215, image_alpha);

draw_set_halign(fa_left);
