met = get_integer("Goto Monster...", 0);
global.metdead[met] = 0;

switch (met)
{
    case 0:
        targetx = 624;
        targety = 128;
        targetroom = 31;
        break;
    
    case 1:
        targetx = 16;
        targety = 128;
        targetroom = 60;
        break;
    
    case 2:
        targetx = 16;
        targety = 160;
        targetroom = 79;
        break;
    
    case 3:
        targetx = 1264;
        targety = 160;
        targetroom = 80;
        break;
    
    case 4:
        targetx = 16;
        targety = 160;
        targetroom = 81;
        break;
    
    case 5:
        targetx = 1264;
        targety = 160;
        targetroom = 82;
        break;
    
    case 6:
        targetx = 16;
        targety = 208;
        targetroom = 97;
        break;
    
    case 7:
        targetx = 16;
        targety = 192;
        targetroom = 92;
        break;
    
    case 8:
        targetx = 624;
        targety = 128;
        targetroom = 84;
        break;
    
    case 9:
        targetx = 16;
        targety = 144;
        targetroom = 112;
        break;
    
    case 10:
        targetx = 1584;
        targety = 624;
        targetroom = 114;
        break;
    
    case 11:
        targetx = 16;
        targety = 384;
        targetroom = 116;
        break;
    
    case 12:
        targetx = 602;
        targety = 144;
        targetroom = 115;
        global.metdead[11] = 1;
        break;
}

global.targetx = targetx;
global.targety = targety;
global.camstartx = targetx;
global.camstarty = targety;
room_goto(targetroom);
