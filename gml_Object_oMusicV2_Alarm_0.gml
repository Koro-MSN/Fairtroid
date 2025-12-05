if (!sfx_isplaying(256))
{
    if (!sfx_isplaying(currentbgm))
    {
        mus_current_fadein();
        alarm[0] = 10;
    }
}
else
{
    alarm[0] = 5;
}
