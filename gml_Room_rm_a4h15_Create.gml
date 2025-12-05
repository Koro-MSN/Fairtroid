global.mapoffsetx = 38;
global.mapoffsety = 42;
global.watertype = 0;
global.waterlevel = 0;
global.floormaterial = 1;

if (global.event[200] == 0)
    mus_change(275);
else
    mus_change(276);

instance_create(240, 352, scr_itemsopen(oControl.mod_259));
