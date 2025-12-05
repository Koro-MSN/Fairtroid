frequency_x = choose(-1, 1) * random_range(0.015, 0.035);
amplitude_x = orbit_amplitude;
frequency_y = choose(-1, 1) * random_range(0.015, 0.035);
amplitude_y = orbit_amplitude;
ytarget = parent.ystart;
image_index = choose(1, 2, 3);
image_speed = 0.33;

switch (parent.sprite_index)
{
    case sElderSeptogg_tlRock1AN:
        sprite_index = sSeptogg_tlRock1A;
        break;
    
    case sElderSeptogg_tlRock2NB:
        sprite_index = sSeptogg_tlRock2A;
        break;
    
    case sElderSeptogg_tlRock3A:
        sprite_index = sSeptogg_tlRock3A;
        break;
    
    case sElderSeptogg_tlRock4A:
        sprite_index = sSeptogg_tlRock4A;
        break;
    
    case sElderSeptogg_tlRock4B:
        sprite_index = sSeptogg_tlRock4B;
        break;
    
    case sElderSeptogg_tlRock5A:
        sprite_index = sSeptogg_tlRock5A;
        break;
    
    case sElderSeptogg_tlRock6A:
        sprite_index = sSeptogg_tlRock6A;
        break;
    
    case sElderSeptogg_tlGreenCrystals:
        if (irandom(99) < 15)
            sprite_index = sSeptogg_Rupee;
        else
            sprite_index = sSeptogg_tlGreenCrystals;
        
        break;
    
    default:
        switch (global.timeofday)
        {
            case 1:
                sprite_index = sSeptoggTwilight;
                break;
            
            case 2:
                sprite_index = sSeptoggNight;
                break;
            
            default:
                sprite_index = sSeptogg;
        }
}
