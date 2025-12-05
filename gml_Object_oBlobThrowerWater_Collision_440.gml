if (frozen == 0)
{
    if (global.icemissiles && !other.smissile)
    {
    }
    else
    {
        with (other.id)
            event_user(1);
    }
}
else
{
    event_user(0);
    
    with (other.id)
        event_user(0);
}

if (global.icemissiles && !other.smissile)
{
    frozen = 300;
    PlaySoundMono(82);
    
    with (other.id)
        event_user(0);
}
