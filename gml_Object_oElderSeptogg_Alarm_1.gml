switch (real(string_char_at(room_get_name(room), 5)))
{
    case 1:
        flying_sprite = 1558;
        carrying_sprite = 1559;
        material = 1;
        break;
    
    case 2:
        flying_sprite = 1560;
        carrying_sprite = 1561;
        material = 1;
        break;
    
    case 3:
        var room_let = string(string_char_at(room_get_name(room), 6));
        
        if (room_let == "b")
        {
            flying_sprite = 1576;
            carrying_sprite = 1577;
            material = 5;
        }
        else
        {
            flying_sprite = 1562;
            carrying_sprite = 1563;
            material = 1;
        }
        
        break;
    
    case 4:
        var room_let = string(string_char_at(room_get_name(room), 6));
        
        if (room_let == "b")
        {
            flying_sprite = 1574;
            carrying_sprite = 1575;
            material = 1;
        }
        else
        {
            flying_sprite = 1564;
            carrying_sprite = 1565;
            material = 1;
        }
        
        break;
    
    case 5:
        flying_sprite = 1566;
        carrying_sprite = 1567;
        material = 1;
        break;
    
    case 6:
        flying_sprite = 1568;
        carrying_sprite = 1569;
        material = 1;
        break;
    
    default:
        var room_num = real(string(string_char_at(room_get_name(room), 7) + string_char_at(room_get_name(room), 8)));
        
        if (room_num >= 16 && room_num <= 23)
        {
            flying_sprite = 1556;
            carrying_sprite = 1557;
            material = 1;
            break;
        }
        
        if ((room_num >= 24 && room_num <= 28) || room_num == 11)
        {
            flying_sprite = 1562;
            carrying_sprite = 1563;
            material = 1;
            break;
        }
        
        if (room_num >= 5 && room_num <= 15)
        {
            flying_sprite = 1558;
            carrying_sprite = 1559;
            material = 1;
            break;
        }
        
        if (room_num >= 29)
        {
            flying_sprite = 1564;
            carrying_sprite = 1565;
            material = 1;
            break;
        }
        
        switch (global.timeofday)
        {
            case 1:
                flying_sprite = 1572;
                carrying_sprite = 1573;
                break;
            
            case 2:
                flying_sprite = 1570;
                carrying_sprite = 1571;
                break;
            
            default:
                flying_sprite = 1554;
                carrying_sprite = 1555;
        }
        
        material = 2;
}

sprite_index = flying_sprite;

if (room == rm_a0h05)
    exit;

repeat (parent)
{
    var inst = instance_create(x, y, oBabySeptogg);
    
    with (inst)
    {
        parent = other.id;
        event_user(0);
    }
}
