global.mapoffsetx = 66;
global.mapoffsety = 42;
global.waterlevel = 0;
global.watertype = 0;
global.floormaterial = 4;
global.objdeactivate = 0;

if (global.event[250] > 0)
    mus_change(281);
else
    mus_change(280);

with (oBlockScrew)
    regentime = -1;
