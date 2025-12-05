if (oControl.mod_randomgamebool == 1 && oControl.mod_previous_room == 268 && global.screwattack == 0 && global.item[scr_itemchange(8)] == 1)
    instance_destroy();
else
    link_tile(73, 80, 208);

regentime = -1;
