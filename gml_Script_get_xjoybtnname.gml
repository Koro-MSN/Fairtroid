switch (oControl.mod_buttonsconfig)
{
    case 1:
        return scr_controller_ps(argument0);
        break;
    
    case 2:
    case 3:
        return scr_controller_N(argument0);
        break;
    
    default:
        return scr_controller_xbox(argument0);
        break;
}
