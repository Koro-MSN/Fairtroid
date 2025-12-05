if (numproj > 0)
{
    instance_create(x + 10, y, oQueenProj);
    sfx_play(72);
    numproj -= 1;
    alarm[0] = projdelay;
}
