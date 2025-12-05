with (other.id)
{
    event_user(0);
    instance_destroy();
}

spawn_rnd_pickup(100);
sfx_play(67);
event_user(1);
