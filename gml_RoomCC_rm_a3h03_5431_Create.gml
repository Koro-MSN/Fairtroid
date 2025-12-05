if ((oControl.mod_randomgamebool == 1 || oControl.mod_splitrandom == 1) && global.item[0] == 0 && global.ptanks == 0)
    instance_destroy();
else
    link_tile(8, 96, 32);
