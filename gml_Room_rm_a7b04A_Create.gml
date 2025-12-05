global.mapoffsetx = 7;
global.mapoffsety = 22;
global.waterlevel = 0;
global.floormaterial = 3;

if (global.event[302] == 0)
    mus_change(286);
else
    mus_change(288);

if (oControl.chozomessage >= 10)
{
    create_log_trigger(0, 44, 440, 111, 0, 0);
    
    if (instance_exists(oLogTrigger))
    {
        instance_create(438, 82, oChozoLogMarker);
        
        with (oLogTrigger)
            image_xscale = 2;
    }
}
