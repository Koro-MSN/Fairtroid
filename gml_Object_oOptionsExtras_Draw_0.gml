if (room == rm_subscreen)
{
    if (global.gamemode == 3 || global.gamemode == 4 || global.gamemode == 5)
    {
        draw_cool_text(50, 52, get_text("Misc", "ExtrasMode") + ": " + modeindex, 0, 8421504, 4210752, 1);
        draw_cool_text(50, 65, get_text("Misc", "ExtrasSeed") + ": " + string(oControl.seed), 0, 8421504, 4210752, 1);
    }
}
