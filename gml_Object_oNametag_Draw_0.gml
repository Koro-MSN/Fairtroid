if (!instance_exists(oClient))
{
    instance_destroy();
}
else
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        for (var i = 0; i < ds_list_size(oClient.roomListData); i++)
        {
            var arrDraw = ds_list_find_value(oClient.roomListData, i);
            var arrID = arrDraw[0];
            var arrX = arrDraw[1];
            var arrY = arrDraw[2];
            var arrSprite = arrDraw[3];
            var arrImage = arrDraw[4];
            var arrA1 = arrDraw[5];
            var arrA1X = arrDraw[6];
            var arrA1Y = arrDraw[7];
            var arrA2 = arrDraw[8];
            var arrA2X = arrDraw[9];
            var arrA2Y = arrDraw[10];
            var arrA2A = arrDraw[11];
            var arrMirror = arrDraw[12];
            var arrArmmsl = arrDraw[13];
            var arrRoom = arrDraw[14];
            var arrName = arrDraw[15];
            var arrBlend = arrDraw[16];
            var arrFXTimer = arrDraw[17];
            var arrRoomPrev = arrDraw[18];
            var arrState = arrDraw[19];
            var arrSAX = arrDraw[20];
            var arrHealth = arrDraw[25];
            var arrSpectator = arrDraw[26];
            var arrSBall = arrDraw[31];
            var tunnel = 0;
            
            if (string_count("MorphBall", sprite_get_name(arrSprite)) > 0)
            {
                with (oMultiHitbox)
                {
                    if (myid == arrID)
                    {
                        if (position_meeting(arrX, arrY + 1, oSolid) && position_meeting(arrX, arrY - 17, oSolid))
                            tunnel = 1;
                    }
                }
            }
            
            if ((arrRoom == room || arrRoom == 6 || arrRoom == 10 || arrRoom == 9 || arrRoom == 11 || arrRoom == 16) && instance_exists(oCharacter) && room != rm_transition)
            {
                if (arrSAX == global.sax)
                {
                    if (!arrSpectator)
                    {
                        var offsetY = 48;
                        
                        if (string_count("MorphBall", sprite_get_name(arrSprite)) > 0)
                            offsetY = 21;
                        
                        var offsetX = 7;
                        draw_set_halign(fa_center);
                        var healthString = string(arrHealth);
                        var barHealthString = string_copy(healthString, string_length(healthString) - 1, string_length(healthString));
                        var barHealth = real(barHealthString);
                        var tankHealth = arrHealth - barHealth;
                        var fullTanks = tankHealth / 100;
                        var tank = 0;
                        
                        for (var f = 0; f < 10; f++)
                        {
                            tank++;
                            var _x = 3 * floor(f / 2);
                            var _y = 3 * (f % 2);
                            var tankSprite = 1887;
                            
                            if (tank <= fullTanks)
                            {
                                tankSprite = 1885;
                                draw_sprite_ext(tankSprite, 0, (arrX - offsetX) + _x, (arrY - (offsetY + 7)) + _y, 1, 1, 0, c_aqua, 1);
                            }
                            else
                            {
                                draw_sprite_ext(tankSprite, 0, (arrX - offsetX) + _x, (arrY - (offsetY + 7)) + _y, 1, 1, 0, c_white, 1);
                            }
                        }
                        
                        draw_sprite_ext(sRHealthBar, 0, arrX - offsetX, arrY - (offsetY + 10), 1, 1, 0, c_aqua, 1);
                        draw_set_halign(fa_right);
                        var stretchMult = abs(15 - round(barHealth / 6.6)) * -1;
                        
                        if (barHealth == 99)
                            stretchMult = 0;
                        
                        draw_sprite_ext(sHealthBarStretch, 0, (arrX - offsetX) + 14, arrY - (offsetY + 10), stretchMult, 1, 0, c_white, 1);
                        draw_set_halign(fa_left);
                    }
                    
                    var showName = 1;
                    
                    switch (oControl.showname)
                    {
                        case "disabled":
                            showName = 0;
                            break;
                        
                        case "enabled":
                            showName = 1;
                            break;
                    }
                    
                    if (showName)
                    {
                        var text;
                        
                        if (arrRoom == room)
                            text = arrName;
                        else if (arrRoom == 10)
                            text = arrName + ": collecting item";
                        else
                            text = arrName + ": paused";
                        
                        if (arrSpectator)
                            text = "";
                        
                        if (arrRoom != room)
                        {
                            if (arrRoomPrev == room)
                            {
                                var offset = 52;
                                
                                if (string_lower(arrName) == "meep")
                                    offset = 54;
                                
                                if (string_lower(arrName) == "omegadruid")
                                    offset = 62;
                                
                                draw_set_font(global.fontGUI2);
                                draw_set_halign(fa_center);
                                draw_cool_text(arrX, arrY - offset, text, 0, 16777215, 16777215, 1);
                                draw_set_halign(fa_left);
                            }
                        }
                        else
                        {
                            var offset = 52;
                            
                            if (string_lower(arrName) == "meep")
                                offset = 54;
                            
                            if (string_lower(arrName) == "omegadruid")
                                offset = 62;
                            
                            draw_set_font(global.fontGUI2);
                            draw_set_halign(fa_center);
                            draw_cool_text(arrX, arrY - offset, text, 0, 16777215, 16777215, 1);
                            draw_set_halign(fa_left);
                        }
                    }
                }
                else if (global.showHealthIndicators && !tunnel && !arrSpectator && !arrSBall)
                {
                    var offsetY = 42;
                    
                    if (string_count("MorphBall", sprite_get_name(arrSprite)) > 0)
                        offsetY = 21;
                    
                    var offsetX = 7;
                    draw_set_halign(fa_center);
                    draw_sprite(sRHealthArrow, 0, arrX - 1, arrY - offsetY);
                    var healthString = string(arrHealth);
                    var barHealthString = string_copy(healthString, string_length(healthString) - 1, string_length(healthString));
                    var barHealth = real(barHealthString);
                    var tankHealth = arrHealth - barHealth;
                    var fullTanks = tankHealth / 100;
                    var tank = 0;
                    var redColor = make_color_hsv(0, 255, 255);
                    
                    for (var f = 0; f < 10; f++)
                    {
                        tank++;
                        var _x = 3 * floor(f / 2);
                        var _y = 3 * (f % 2);
                        var tankSprite = 1887;
                        
                        if (tank <= fullTanks)
                        {
                            tankSprite = 1885;
                            draw_sprite_ext(tankSprite, 0, (arrX - offsetX) + _x, (arrY - (offsetY + 7)) + _y, 1, 1, 0, redColor, 1);
                        }
                        else
                        {
                            draw_sprite_ext(tankSprite, 0, (arrX - offsetX) + _x, (arrY - (offsetY + 7)) + _y, 1, 1, 0, c_white, 1);
                        }
                    }
                    
                    draw_sprite_ext(sRHealthBar, 0, arrX - offsetX, arrY - (offsetY + 10), 1, 1, 0, redColor, 1);
                    draw_set_halign(fa_right);
                    var stretchMult = abs(15 - round(barHealth / 6.6)) * -1;
                    
                    if (barHealth == 99)
                        stretchMult = 0;
                    
                    draw_sprite_ext(sHealthBarStretch, 0, (arrX - offsetX) + 14, arrY - (offsetY + 10), stretchMult, 1, 0, c_white, 1);
                    draw_set_halign(fa_left);
                }
            }
        }
    }
    
    if (global.showHealthIndicators && instance_exists(oCharacter))
    {
        var offsetY = 42;
        
        if (string_count("MorphBall", sprite_get_name(oCharacter.sprite_index)) > 0)
            offsetY = 21;
        
        var offsetX = 7;
        draw_set_halign(fa_center);
        draw_sprite(sGHealthArrow, 0, oCharacter.x - 2, oCharacter.y - offsetY);
        draw_set_halign(fa_left);
    }
}

if (global.spectator && global.ingame)
{
    var text = "Jump to swap players";
    draw_set_font(global.fontGUI2);
    draw_set_halign(fa_center);
    draw_cool_text(view_xview[0] + 160, view_yview[0] + 200, text, 0, 16777215, 16777215, image_alpha);
    draw_set_halign(fa_left);
    text = "Fire to stop spectating";
    draw_set_font(global.fontGUI2);
    draw_set_halign(fa_center);
    draw_cool_text(view_xview[0] + 160, view_yview[0] + 220, text, 0, 16777215, 16777215, image_alpha);
    draw_set_halign(fa_left);
}
