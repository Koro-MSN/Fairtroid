var armcannon = 1;
var set = global.currentsuit;

if (state == STANDING)
{
    if (landing == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(960, 1186);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1061, 1186);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(879, 1186);
        
        image_speed = 0.5;
    }
    else if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(1004, 1227);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1099, 1227);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(931, 1227);
        
        image_speed = 0.5;
    }
    else
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(993, 1216);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1088, 1216);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(920, 1216);
            
            image_speed = 0.1;
            
            if (!global.sax && idle == timetoidle)
                idleanim = round(random(1));
            
            if (global.sax && idle == timetoidle)
            {
                idleanim = round(irandom(100));
                idleAnimTemp = 0;
                
                if (idleanim <= 100 && idleanim >= 51)
                    idleAnimTemp = 0;
                
                if (idleanim <= 50 && idleanim >= 1)
                    idleAnimTemp = 1;
                
                if (idleanim == 0)
                    idleAnimTemp = 2;
                
                idleanim = idleAnimTemp;
            }
            
            if (idle > timetoidle && !instance_exists(oEMPNoise))
            {
                image_speed = 0;
                armcannon = 0;
                
                if (set == 0)
                    sprite_index = scr_suit_sprites(949, 1176);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1049, 1176);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(868, 1176);
                
                if (idleanim == 0)
                {
                    if (idle > timetoidle && idle <= (timetoidle + 10))
                        image_index = 0;
                    
                    if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                        image_index = 1;
                    
                    if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                        image_index = 2;
                    
                    if (idle > (timetoidle + 80) && idle <= (timetoidle + 90))
                        image_index = 3;
                    
                    if (idle > (timetoidle + 90) && idle <= (timetoidle + 100))
                        image_index = 4;
                    
                    if (idle > (timetoidle + 100) && idle <= (timetoidle + 160))
                        image_index = 5;
                    
                    if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                        image_index = 4;
                    
                    if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                        image_index = 3;
                    
                    if (idle > (timetoidle + 180) && idle <= (timetoidle + 190))
                        image_index = 2;
                    
                    if (idle > (timetoidle + 190) && idle <= (timetoidle + 200))
                        image_index = 6;
                    
                    if (idle > (timetoidle + 200) && idle <= (timetoidle + 270))
                        image_index = 7;
                    
                    if (idle > (timetoidle + 270) && idle <= (timetoidle + 280))
                        image_index = 6;
                    
                    if (idle > (timetoidle + 280) && idle <= (timetoidle + 290))
                        image_index = 1;
                    
                    if (idle > (timetoidle + 290))
                    {
                        idle = 0;
                        timetoidle = 300 + floor(random(300));
                    }
                }
                
                if (idleanim == 1)
                {
                    if (global.sax)
                    {
                        if (set == 0)
                            sprite_index = sIdleRightSAX;
                        
                        if (set == 1)
                            sprite_index = sVIdleRightSAX;
                        
                        if (set == 2)
                            sprite_index = sGIdleRightSAX;
                        
                        if (idle > timetoidle && idle <= (timetoidle + 5))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 5) && idle <= (timetoidle + 15))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 15) && idle <= (timetoidle + 25))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 25) && idle <= (timetoidle + 35))
                            image_index = 3;
                        
                        if (idle > (timetoidle + 35) && idle <= (timetoidle + 45))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 45) && idle <= (timetoidle + 55))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 55) && idle <= (timetoidle + 65))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 65) && idle <= (timetoidle + 75))
                            image_index = 3;
                        
                        if (idle > (timetoidle + 75) && idle <= (timetoidle + 85))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 85) && idle <= (timetoidle + 95))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 95) && idle <= (timetoidle + 105))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 105) && idle <= (timetoidle + 115))
                            image_index = 3;
                        
                        if (idle > (timetoidle + 115) && idle <= (timetoidle + 125))
                            image_index = 4;
                        
                        if (idle > (timetoidle + 125) && idle <= (timetoidle + 135))
                            image_index = 5;
                        
                        if (idle > (timetoidle + 135) && idle <= (timetoidle + 165))
                            image_index = 6;
                        
                        if (idle > (timetoidle + 165) && idle <= (timetoidle + 175))
                            image_index = 7;
                        
                        if (idle > (timetoidle + 175) && idle <= (timetoidle + 185))
                            image_index = 8;
                        
                        if (idle > (timetoidle + 185) && idle <= (timetoidle + 195))
                            image_index = 9;
                        
                        if (idle > (timetoidle + 195) && idle <= (timetoidle + 255))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 255) && idle <= (timetoidle + 265))
                            image_index = 11;
                        
                        if (idle > (timetoidle + 265) && idle <= (timetoidle + 275))
                            image_index = 12;
                        
                        if (idle > (timetoidle + 275) && idle <= (timetoidle + 285))
                            image_index = 13;
                        
                        if (idle > (timetoidle + 285) && idle <= (timetoidle + 345))
                            image_index = 14;
                        
                        if (idle > (timetoidle + 345) && idle <= (timetoidle + 355))
                            image_index = 15;
                        
                        if (idle > (timetoidle + 355) && idle <= (timetoidle + 365))
                            image_index = 16;
                        
                        if (idle > (timetoidle + 365) && idle <= (timetoidle + 366))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 366))
                        {
                            idle = 0;
                            timetoidle = 300 + floor(random(300));
                        }
                    }
                    else
                    {
                        if (idle > timetoidle && idle <= (timetoidle + 10))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 80) && idle <= (timetoidle + 110))
                            image_index = 8;
                        
                        if (idle > (timetoidle + 110) && idle <= (timetoidle + 120))
                            image_index = 9;
                        
                        if (idle > (timetoidle + 120) && idle <= (timetoidle + 130))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 130) && idle <= (timetoidle + 140))
                            image_index = 11;
                        
                        if (idle > (timetoidle + 140) && idle <= (timetoidle + 150))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 150) && idle <= (timetoidle + 160))
                            image_index = 11;
                        
                        if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                            image_index = 9;
                        
                        if (idle > (timetoidle + 180) && idle <= (timetoidle + 210))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 210) && idle <= (timetoidle + 220))
                            image_index = 11;
                        
                        if (idle > (timetoidle + 220) && idle <= (timetoidle + 230))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 230) && idle <= (timetoidle + 240))
                            image_index = 9;
                        
                        if (idle > (timetoidle + 240) && idle <= (timetoidle + 250))
                            image_index = 8;
                        
                        if (idle > (timetoidle + 250) && idle <= (timetoidle + 260))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 260) && idle <= (timetoidle + 270))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 270))
                        {
                            idle = 0;
                            timetoidle = 300 + floor(random(300));
                        }
                    }
                }
                
                if (idleanim == 2)
                {
                    if (set == 0)
                        sprite_index = sIdleRightSAX;
                    
                    if (set == 1)
                        sprite_index = sVIdleRightSAX;
                    
                    if (set == 2)
                        sprite_index = sGIdleRightSAX;
                    
                    if (idle > timetoidle && idle <= (timetoidle + 10))
                        image_index = 0;
                    
                    if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                        image_index = 1;
                    
                    if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                        image_index = 2;
                    
                    if (idle > (timetoidle + 80) && idle <= (timetoidle + 90))
                        image_index = 3;
                    
                    if (idle > (timetoidle + 90) && idle <= (timetoidle + 100))
                        image_index = 4;
                    
                    if (idle > (timetoidle + 100) && idle <= (timetoidle + 160))
                        image_index = 5;
                    
                    if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                        image_index = 4;
                    
                    if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                        image_index = 3;
                    
                    if (idle > (timetoidle + 180) && idle <= (timetoidle + 190))
                        image_index = 2;
                    
                    if (idle > (timetoidle + 190) && idle <= (timetoidle + 200))
                        image_index = 6;
                    
                    if (idle > (timetoidle + 200) && idle <= (timetoidle + 270))
                        image_index = 7;
                    
                    if (idle > (timetoidle + 270) && idle <= (timetoidle + 280))
                        image_index = 6;
                    
                    if (idle > (timetoidle + 280) && idle <= (timetoidle + 290))
                        image_index = 1;
                    
                    if (idle > (timetoidle + 290))
                    {
                        idle = 0;
                        timetoidle = 300 + floor(random(300));
                    }
                }
            }
            
            if (aimdirection == 2)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(991, 1214);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1086, 1214);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(918, 1214);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(987, 1210);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1082, 1210);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(914, 1210);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(989, 1212);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1084, 1212);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(916, 1212);
                
                image_speed = 0.1;
            }
        }
        
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(992, 1215);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1087, 1215);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(919, 1215);
            
            image_speed = 0.1;
            
            if (!global.sax && idle == timetoidle)
                idleanim = round(random(1));
            
            if (global.sax && idle == timetoidle)
            {
                idleanim = round(irandom(100));
                idleAnimTemp = 0;
                
                if (idleanim <= 100 && idleanim >= 51)
                    idleAnimTemp = 0;
                
                if (idleanim <= 50 && idleanim >= 1)
                    idleAnimTemp = 1;
                
                if (idleanim == 0)
                    idleAnimTemp = 2;
                
                idleanim = idleAnimTemp;
            }
            
            if (idle > timetoidle && !instance_exists(oEMPNoise))
            {
                image_speed = 0;
                armcannon = 0;
                
                if (set == 0)
                    sprite_index = scr_suit_sprites(948, 1175);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1048, 1175);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(867, 1175);
                
                if (idleanim == 0)
                {
                    if (idle > timetoidle && idle <= (timetoidle + 10))
                        image_index = 0;
                    
                    if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                        image_index = 1;
                    
                    if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                        image_index = 2;
                    
                    if (idle > (timetoidle + 80) && idle <= (timetoidle + 90))
                        image_index = 3;
                    
                    if (idle > (timetoidle + 90) && idle <= (timetoidle + 100))
                        image_index = 4;
                    
                    if (idle > (timetoidle + 100) && idle <= (timetoidle + 160))
                        image_index = 5;
                    
                    if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                        image_index = 4;
                    
                    if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                        image_index = 3;
                    
                    if (idle > (timetoidle + 180) && idle <= (timetoidle + 190))
                        image_index = 2;
                    
                    if (idle > (timetoidle + 190) && idle <= (timetoidle + 200))
                        image_index = 6;
                    
                    if (idle > (timetoidle + 200) && idle <= (timetoidle + 270))
                        image_index = 7;
                    
                    if (idle > (timetoidle + 270) && idle <= (timetoidle + 280))
                        image_index = 6;
                    
                    if (idle > (timetoidle + 280) && idle <= (timetoidle + 290))
                        image_index = 1;
                    
                    if (idle > (timetoidle + 290))
                    {
                        idle = 0;
                        timetoidle = 300 + floor(random(300));
                    }
                }
                
                if (idleanim == 1)
                {
                    if (global.sax)
                    {
                        if (set == 0)
                            sprite_index = sIdleLeftSAX;
                        
                        if (set == 1)
                            sprite_index = sVIdleLeftSAX;
                        
                        if (set == 2)
                            sprite_index = sGIdleLeftSAX;
                        
                        if (idle > timetoidle && idle <= (timetoidle + 5))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 5) && idle <= (timetoidle + 15))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 15) && idle <= (timetoidle + 25))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 25) && idle <= (timetoidle + 35))
                            image_index = 3;
                        
                        if (idle > (timetoidle + 35) && idle <= (timetoidle + 45))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 45) && idle <= (timetoidle + 55))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 55) && idle <= (timetoidle + 65))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 65) && idle <= (timetoidle + 75))
                            image_index = 3;
                        
                        if (idle > (timetoidle + 75) && idle <= (timetoidle + 85))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 85) && idle <= (timetoidle + 95))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 95) && idle <= (timetoidle + 105))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 105) && idle <= (timetoidle + 115))
                            image_index = 3;
                        
                        if (idle > (timetoidle + 115) && idle <= (timetoidle + 125))
                            image_index = 4;
                        
                        if (idle > (timetoidle + 125) && idle <= (timetoidle + 135))
                            image_index = 5;
                        
                        if (idle > (timetoidle + 135) && idle <= (timetoidle + 165))
                            image_index = 6;
                        
                        if (idle > (timetoidle + 165) && idle <= (timetoidle + 175))
                            image_index = 7;
                        
                        if (idle > (timetoidle + 175) && idle <= (timetoidle + 185))
                            image_index = 8;
                        
                        if (idle > (timetoidle + 185) && idle <= (timetoidle + 195))
                            image_index = 9;
                        
                        if (idle > (timetoidle + 195) && idle <= (timetoidle + 255))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 255) && idle <= (timetoidle + 265))
                            image_index = 11;
                        
                        if (idle > (timetoidle + 265) && idle <= (timetoidle + 275))
                            image_index = 12;
                        
                        if (idle > (timetoidle + 275) && idle <= (timetoidle + 285))
                            image_index = 13;
                        
                        if (idle > (timetoidle + 285) && idle <= (timetoidle + 345))
                            image_index = 14;
                        
                        if (idle > (timetoidle + 345) && idle <= (timetoidle + 355))
                            image_index = 15;
                        
                        if (idle > (timetoidle + 355) && idle <= (timetoidle + 365))
                            image_index = 16;
                        
                        if (idle > (timetoidle + 365) && idle <= (timetoidle + 366))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 366))
                        {
                            idle = 0;
                            timetoidle = 300 + floor(random(300));
                        }
                    }
                    else
                    {
                        if (idle > timetoidle && idle <= (timetoidle + 10))
                            image_index = 0;
                        
                        if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 80) && idle <= (timetoidle + 110))
                            image_index = 8;
                        
                        if (idle > (timetoidle + 110) && idle <= (timetoidle + 120))
                            image_index = 9;
                        
                        if (idle > (timetoidle + 120) && idle <= (timetoidle + 130))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 130) && idle <= (timetoidle + 140))
                            image_index = 11;
                        
                        if (idle > (timetoidle + 140) && idle <= (timetoidle + 150))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 150) && idle <= (timetoidle + 160))
                            image_index = 11;
                        
                        if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                            image_index = 9;
                        
                        if (idle > (timetoidle + 180) && idle <= (timetoidle + 210))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 210) && idle <= (timetoidle + 220))
                            image_index = 11;
                        
                        if (idle > (timetoidle + 220) && idle <= (timetoidle + 230))
                            image_index = 10;
                        
                        if (idle > (timetoidle + 230) && idle <= (timetoidle + 240))
                            image_index = 9;
                        
                        if (idle > (timetoidle + 240) && idle <= (timetoidle + 250))
                            image_index = 8;
                        
                        if (idle > (timetoidle + 250) && idle <= (timetoidle + 260))
                            image_index = 2;
                        
                        if (idle > (timetoidle + 260) && idle <= (timetoidle + 270))
                            image_index = 1;
                        
                        if (idle > (timetoidle + 270))
                        {
                            idle = 0;
                            timetoidle = 300 + floor(random(300));
                        }
                    }
                }
                
                if (idleanim == 2)
                {
                    if (set == 0)
                        sprite_index = sIdleLeftSAX;
                    
                    if (set == 1)
                        sprite_index = sVIdleLeftSAX;
                    
                    if (set == 2)
                        sprite_index = sGIdleLeftSAX;
                    
                    if (idle > timetoidle && idle <= (timetoidle + 10))
                        image_index = 0;
                    
                    if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                        image_index = 1;
                    
                    if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                        image_index = 2;
                    
                    if (idle > (timetoidle + 80) && idle <= (timetoidle + 90))
                        image_index = 3;
                    
                    if (idle > (timetoidle + 90) && idle <= (timetoidle + 100))
                        image_index = 4;
                    
                    if (idle > (timetoidle + 100) && idle <= (timetoidle + 160))
                        image_index = 5;
                    
                    if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                        image_index = 4;
                    
                    if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                        image_index = 3;
                    
                    if (idle > (timetoidle + 180) && idle <= (timetoidle + 190))
                        image_index = 2;
                    
                    if (idle > (timetoidle + 190) && idle <= (timetoidle + 200))
                        image_index = 6;
                    
                    if (idle > (timetoidle + 200) && idle <= (timetoidle + 270))
                        image_index = 7;
                    
                    if (idle > (timetoidle + 270) && idle <= (timetoidle + 280))
                        image_index = 6;
                    
                    if (idle > (timetoidle + 280) && idle <= (timetoidle + 290))
                        image_index = 1;
                    
                    if (idle > (timetoidle + 290))
                    {
                        idle = 0;
                        timetoidle = 300 + floor(random(300));
                    }
                }
            }
            
            if (aimdirection == 3)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(988, 1211);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1083, 1211);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(915, 1211);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(986, 1209);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1081, 1209);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(913, 1209);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(990, 1213);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1085, 1213);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(917, 1213);
                
                image_speed = 0.1;
            }
        }
    }
}

if (state == RUNNING)
{
    landing = 0;
    
    if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(1004, 1227);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1099, 1227);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(931, 1227);
        
        image_speed = 0.5;
    }
    else
    {
        if (facing == RIGHT && walking == 0)
        {
            if (aimdirection == 0 && firing == 0 && armmsl == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(976, 1200);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1072, 1200);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(904, 1200);
                
                image_speed = 0.5;
            }
            
            if (aimdirection == 0 && (firing > 0 || armmsl == 1))
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(972, 1196);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1068, 1196);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(900, 1196);
                
                image_speed = 0.5;
            }
            
            if (aimdirection == 2)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(974, 1198);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1070, 1198);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(902, 1198);
                
                image_speed = 0.5;
            }
            
            if (aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(970, 1194);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1066, 1194);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(898, 1194);
                
                image_speed = 0.5;
            }
        }
        
        if (facing == LEFT && walking == 0)
        {
            if (aimdirection == 1 && firing == 0 && armmsl == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(975, 1199);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1071, 1199);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(903, 1199);
                
                image_speed = 0.5;
            }
            
            if (aimdirection == 1 && (firing > 0 || armmsl == 1))
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(971, 1195);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1067, 1195);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(899, 1195);
                
                image_speed = 0.5;
            }
            
            if (aimdirection == 3)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(973, 1197);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1069, 1197);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(901, 1197);
                
                image_speed = 0.5;
            }
            
            if (aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(969, 1193);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1065, 1193);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(897, 1193);
                
                image_speed = 0.5;
            }
        }
        
        if (facing == RIGHT && walking == 1)
        {
            if (aimdirection == 0 && firing == 0 && armmsl == 0 && aimlock == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1123, 1239);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1111, 1239);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(943, 1239);
            }
            
            if (aimdirection == 0 && (firing > 0 || armmsl == 1 || aimlock == 1))
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1117, 1233);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1105, 1233);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(937, 1233);
            }
            
            if (aimdirection == 2)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1121, 1237);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1109, 1237);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(941, 1237);
            }
            
            if (aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1115, 1231);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1103, 1231);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(935, 1231);
            }
            
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1119, 1235);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1107, 1235);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(939, 1235);
            }
            
            if (xVel > 0)
            {
                image_speed = 0.25;
            }
            else if (xVel < 0)
            {
                image_speed = -0.25;
                
                if (image_index <= -10)
                    image_index = 0;
            }
        }
        
        if (facing == LEFT && walking == 1)
        {
            if (aimdirection == 1 && firing == 0 && armmsl == 0 && aimlock == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1122, 1238);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1110, 1238);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(942, 1238);
            }
            
            if (aimdirection == 1 && (firing > 0 || armmsl == 1 || aimlock == 1))
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1116, 1232);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1104, 1232);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(936, 1232);
            }
            
            if (aimdirection == 3)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1118, 1234);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1106, 1234);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(938, 1234);
            }
            
            if (aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1114, 1230);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1102, 1230);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(934, 1230);
            }
            
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1120, 1236);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1108, 1236);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(940, 1236);
            }
            
            if (xVel < 0)
            {
                image_speed = 0.25;
            }
            else if (xVel > 0)
            {
                image_speed = -0.25;
                
                if (image_index <= -10)
                    image_index = 0;
            }
        }
    }
}

if (state == DUCKING)
{
    if (unmorphing == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(1005, 1228);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1100, 1228);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(932, 1228);
        
        image_speed = 0.8;
    }
    else if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(819, 1154);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1026, 1154);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(845, 1154);
        
        image_speed = 0.5;
    }
    else
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(818, 1153);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1025, 1153);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(844, 1153);
        
        image_speed = 0.1;
    }
}

if (state == JUMPING)
{
    if (vjump == 0)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(955, 1182);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1056, 1182);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(874, 1182);
            
            image_speed = 0.75;
        }
        
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(954, 1181);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1055, 1181);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(873, 1181);
            
            image_speed = 0.75;
        }
        
        if (global.spacejump == 1 && statetime > 4 && (inwater == 0 || global.currentsuit == 2))
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(983, 1207);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1079, 1207);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(911, 1207);
            
            image_speed = 1;
        }
    }
    
    if (vjump == 1)
    {
        if (turning == 1)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(812, 1147);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1019, 1147);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(838, 1147);
            
            image_speed = 0.5;
            
            if (aimdirection == 7)
            {
                if (facing == RIGHT)
                {
                    if (set == 0)
                        sprite_index = scr_suit_sprites(953, 1180);
                    
                    if (set == 1)
                        sprite_index = scr_suit_sprites(1053, 1180);
                    
                    if (set == 2)
                        sprite_index = scr_suit_sprites(872, 1180);
                    
                    image_speed = 0.75;
                }
                
                if (facing == LEFT)
                {
                    if (set == 0)
                        sprite_index = scr_suit_sprites(952, 1179);
                    
                    if (set == 1)
                        sprite_index = scr_suit_sprites(1052, 1179);
                    
                    if (set == 2)
                        sprite_index = scr_suit_sprites(871, 1179);
                    
                    image_speed = 0.75;
                }
            }
        }
        else if (unmorphing == 1)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(1005, 1228);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1100, 1228);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(932, 1228);
            
            image_speed = 0.8;
        }
        else
        {
            if (aimdirection != 7)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1054, 1229);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1101, 1229);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(933, 1229);
                
                image_speed = 0.2;
            }
            
            if (aimdirection == 7)
            {
                if (facing == RIGHT)
                {
                    if (set == 0)
                        sprite_index = scr_suit_sprites(951, 1178);
                    
                    if (set == 1)
                        sprite_index = scr_suit_sprites(1051, 1178);
                    
                    if (set == 2)
                        sprite_index = scr_suit_sprites(870, 1178);
                    
                    image_speed = 0.75;
                }
                
                if (facing == LEFT)
                {
                    if (set == 0)
                        sprite_index = scr_suit_sprites(950, 1177);
                    
                    if (set == 1)
                        sprite_index = scr_suit_sprites(1050, 1177);
                    
                    if (set == 2)
                        sprite_index = scr_suit_sprites(869, 1177);
                    
                    image_speed = 0.75;
                }
            }
        }
    }
    
    if (walljumping == 1)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(1124, 1240);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1112, 1240);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(944, 1240);
            
            image_speed = 1;
        }
        
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(1125, 1241);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1113, 1241);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(945, 1241);
            
            image_speed = 1;
        }
    }
}

if (state == FALLING && statePrev == FALLING && statePrevPrev == FALLING)
{
    if (set == 0)
        sprite_index = scr_suit_sprites(955, 1182);
    
    if (set == 1)
        sprite_index = scr_suit_sprites(1056, 1182);
    
    if (set == 2)
        sprite_index = scr_suit_sprites(874, 1182);
    
    image_speed = 0.75;
}

if (state == BALL)
{
    if (morphing == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(965, 1188);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1062, 1188);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(880, 1188);
        
        if (global.opmrpstyle == 0)
            image_speed = 0.8;
        else
            image_speed = 0.5;
    }
    else if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(967, 1190);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1064, 1190);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(882, 1190);
        
        image_speed = 1;
    }
    else
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(966, 1189);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1063, 1189);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(881, 1189);
        
        image_speed = 0.3;
    }
}

if (state == AIRBALL || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY)
{
    if (morphing == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(965, 1188);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1062, 1188);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(880, 1188);
        
        image_speed = 0.8;
    }
    else if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(967, 1190);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1064, 1190);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(882, 1190);
        
        image_speed = 1;
    }
    else
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(811, 1146);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1018, 1146);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(837, 1146);
        
        image_speed = 0.3;
    }
}

if (state == GRABBEDQUEEN)
{
    if (set == 0)
        sprite_index = scr_suit_sprites(813, 1148);
    
    if (set == 1)
        sprite_index = scr_suit_sprites(1020, 1148);
    
    if (set == 2)
        sprite_index = scr_suit_sprites(839, 1148);
}

if (state == SPIDERBALL || (state == AIRBALL && sball == 1))
{
    if (set == 0)
        sprite_index = scr_suit_sprites(985, 1208);
    
    if (set == 1)
        sprite_index = scr_suit_sprites(1080, 1208);
    
    if (set == 2)
        sprite_index = scr_suit_sprites(912, 1208);
    
    if ((xprevious - x) != 0 || (yprevious - y) != 0)
    {
        var sDir = point_direction(xprevious, yprevious, x, y);
        var sDir1 = sDir + 90;
        var sDir2 = sDir - 90;
        var sDirX1 = cos(degtorad(sDir1));
        var sDirY1 = sin(degtorad(sDir1));
        var sDirX2 = cos(degtorad(sDir2));
        var sDirY2 = sin(degtorad(sDir2));
        var sTouchSide1 = place_meeting(x - (sDirX1 * 2), y + (sDirY1 * 2), oSolid);
        var sTouchSide2 = place_meeting(x - (sDirX2 * 2), y + (sDirY2 * 2), oSolid);
        
        if (sTouchSide1)
        {
            if (facing == RIGHT)
                image_speed = 0.3;
            else
                image_speed = -0.3;
        }
        
        if (sTouchSide2)
        {
            if (facing == RIGHT)
                image_speed = -0.3;
            else
                image_speed = 0.3;
        }
    }
}

if (state == LOCKEDBALL)
{
    if (set == 0)
        sprite_index = scr_suit_sprites(966, 1189);
    
    if (set == 1)
        sprite_index = scr_suit_sprites(1063, 1189);
    
    if (set == 2)
        sprite_index = scr_suit_sprites(881, 1189);
    
    image_speed = 0;
    image_index = 0;
}

if (state == GRIP)
{
    if (facing == RIGHT)
    {
        if (turning == 1)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(896, 1172);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1045, 1172);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(864, 1172);
            
            image_speed = 0.5;
        }
        else
        {
            if (aimdirection == 0 || aimdirection == 2 || aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(883, 1191);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1032, 1191);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(851, 1191);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 1)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(888, 1164);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1037, 1164);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(856, 1164);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 3)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(890, 1166);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1039, 1166);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(858, 1166);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(884, 1160);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1033, 1160);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(852, 1160);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(892, 1168);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1041, 1168);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(860, 1168);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 7)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(887, 1163);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1036, 1163);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(855, 1163);
                
                image_speed = 0.1;
            }
        }
    }
    
    if (facing == LEFT)
    {
        if (turning == 1)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(895, 1171);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1044, 1171);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(863, 1171);
            
            image_speed = 0.5;
        }
        else
        {
            if (aimdirection == 1 || aimdirection == 3 || aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(894, 1170);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1043, 1170);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(862, 1170);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(889, 1165);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1038, 1165);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(857, 1165);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 2)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(893, 1169);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1042, 1169);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(861, 1169);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(885, 1161);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1034, 1161);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(853, 1161);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(891, 1167);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1040, 1167);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(859, 1167);
                
                image_speed = 0.1;
            }
            
            if (aimdirection == 7)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(886, 1162);
                
                if (set == 1)
                    sprite_index = scr_suit_sprites(1035, 1162);
                
                if (set == 2)
                    sprite_index = scr_suit_sprites(854, 1162);
                
                image_speed = 0.1;
            }
        }
    }
}

if (state == CLIMBING)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(816, 1151);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1023, 1151);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(842, 1151);
        
        image_speed = 1;
    }
    
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(817, 1152);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1024, 1152);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(843, 1152);
        
        image_speed = 1;
    }
}

if (state == BRAKING)
{
    if (sjball == 0)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(815, 1150);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1022, 1150);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(841, 1150);
            
            image_speed = 0.2;
        }
        
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(814, 1149);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1021, 1149);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(840, 1149);
            
            image_speed = 0.2;
        }
    }
    
    if (sjball == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(811, 1146);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1018, 1146);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(837, 1146);
        
        image_speed = 0;
    }
}

if (state == SJSTART && sjball == 0)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(979, 1203);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1075, 1203);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(907, 1203);
        
        image_speed = 0.3;
    }
    
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(980, 1204);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1076, 1204);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(908, 1204);
        
        image_speed = 0.3;
    }
}

if (state == SUPERJUMP && sjball == 0)
{
    if (sjdir == 0)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(982, 1206);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1078, 1206);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(910, 1206);
            
            image_speed = 0.5;
        }
        
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(981, 1205);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1077, 1205);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(909, 1205);
            
            image_speed = 0.5;
        }
    }
    else
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(978, 1202);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1074, 1202);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(906, 1202);
            
            image_speed = 0.4;
        }
        
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(977, 1201);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1073, 1201);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(905, 1201);
            
            image_speed = 0.4;
        }
    }
}

if (state == SJSTART && sjball == 1)
{
    if (set == 0)
        sprite_index = scr_suit_sprites(811, 1146);
    
    if (set == 1)
        sprite_index = scr_suit_sprites(1018, 1146);
    
    if (set == 2)
        sprite_index = scr_suit_sprites(837, 1146);
    
    image_speed = 0;
}

if (state == SUPERJUMP && sjball == 1)
{
    if (sjdir == 0)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(967, 1190);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1064, 1190);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(882, 1190);
        
        image_speed = 0.5;
    }
    else
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(811, 1146);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1018, 1146);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(837, 1146);
        
        image_speed = 1;
    }
}

if (state == HURT)
{
    if (sjball == 0)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(947, 1174);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1047, 1174);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(866, 1174);
            
            image_speed = 0.2;
        }
        
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(946, 1173);
            
            if (set == 1)
                sprite_index = scr_suit_sprites(1046, 1173);
            
            if (set == 2)
                sprite_index = scr_suit_sprites(865, 1173);
            
            image_speed = 0.2;
        }
    }
    
    if (sjball == 1 || multiBall == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(811, 1146);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1018, 1146);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(837, 1146);
        
        image_speed = 0.5;
        
        if (statetime >= 10 && multiBall == 1)
        {
            state = AIRBALL;
            statetime = 20;
            
            if (aimlock == 0)
                canturn = 1;
            
            sjball = 0;
            multiBall = 0;
            cmhurt = 20;
        }
    }
}

if (state == IDLE || state == SAVING || state == SAVINGSHIP || state == ELEVATOR || state == GFELEVATOR)
{
    if (facing == 0)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(822, 1157);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1029, 1157);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(848, 1157);
        
        image_speed = 0.1;
    }
    
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(824, 1159);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1031, 1159);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(850, 1159);
        
        image_speed = 0.5;
        aimdirection = 0;
    }
    
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(823, 1158);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1030, 1158);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(849, 1158);
        
        image_speed = 0.5;
        aimdirection = 1;
    }
}

if (state == GRABBEDGAMMA || state == GRABBEDOMEGA)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(947, 1174);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1047, 1174);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(866, 1174);
        
        image_speed = 0;
        image_index = 1;
    }
    
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(946, 1173);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1046, 1173);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(865, 1173);
        
        image_speed = 0;
        image_index = 1;
    }
}

if (state == KNOCKBACK1 || state == KNOCKBACK2)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(957, 1184);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1058, 1184);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(876, 1184);
    }
    
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(956, 1183);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1057, 1183);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(875, 1183);
    }
}

if (state == KNOCKBACK1_LAND || state == KNOCKBACK2_LAND)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(959, 1187);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1060, 1187);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(878, 1187);
    }
    
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(958, 1185);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1059, 1185);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(877, 1185);
    }
}

if (state == A4EXPL)
{
    if (facing == RIGHT && statetime >= 60)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(959, 1187);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1060, 1187);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(878, 1187);
    }
}

if (state == RECOVER)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(955, 1182);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1056, 1182);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(874, 1182);
        
        image_speed = -0.5;
    }
    
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(954, 1181);
        
        if (set == 1)
            sprite_index = scr_suit_sprites(1055, 1181);
        
        if (set == 2)
            sprite_index = scr_suit_sprites(873, 1181);
        
        image_speed = -0.5;
    }
}

if ((inwater == 1 && global.currentsuit != 2) || monster_drain > 0)
{
    if (state == RUNNING || state == JUMPING)
        image_speed *= 0.5;
}

aspr1 = 66;
asprx = 0;
aspry = 0;

if (state == DUCKING && morphing == 0 && unmorphing == 0 && turning == 0)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(805, 1140);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1012, 1140);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(831, 1140);
            
            aspry = -12;
        }
        
        if (aimdirection == 2)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(810, 1145);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1017, 1145);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(836, 1145);
            
            aspry = -12;
        }
        
        if (aimdirection == 4)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(801, 1136);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1008, 1136);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(827, 1136);
            
            aspry = -12;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(809, 1144);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1016, 1144);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(835, 1144);
            
            aspry = -13;
        }
    }
    
    if (facing == LEFT)
    {
        if (aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(803, 1138);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1010, 1138);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(829, 1138);
            
            aspry = -12;
        }
        
        if (aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(807, 1142);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1014, 1142);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(833, 1142);
            
            aspry = -12;
        }
        
        if (aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(800, 1135);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1007, 1135);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(826, 1135);
            
            aspry = -12;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(808, 1143);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1015, 1143);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(834, 1143);
            
            aspry = -13;
        }
    }
}

if (state == DUCKING && turning == 1)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(998, 1221);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1093, 1221);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(925, 1221);
            
            aspry = -12;
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1003, 1226);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1098, 1226);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(930, 1226);
            
            asprx = -2;
            aspry = -12;
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(995, 1218);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1090, 1218);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(922, 1218);
            
            asprx = -2;
            aspry = -12;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1002, 1225);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1097, 1225);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(929, 1225);
            
            aspry = -13;
        }
    }
    
    if (facing == LEFT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(996, 1219);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1091, 1219);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(923, 1219);
            
            aspry = -12;
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1000, 1223);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1095, 1223);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(927, 1223);
            
            asprx = -2;
            aspry = -12;
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(994, 1217);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1089, 1217);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(921, 1217);
            
            aspry = -12;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1001, 1224);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1096, 1224);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(928, 1224);
            
            aspry = -13;
        }
    }
}

if ((state == STANDING || state == RUNNING) && turning == 1)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(999, 1222);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1094, 1222);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(926, 1222);
            
            aspry = -23;
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1003, 1226);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1098, 1226);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(930, 1226);
            
            asprx = -2;
            aspry = -23;
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(995, 1218);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1090, 1218);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(922, 1218);
            
            asprx = -2;
            aspry = -23;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1002, 1225);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1097, 1225);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(929, 1225);
            
            aspry = -24;
        }
    }
    
    if (facing == LEFT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(997, 1220);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1092, 1220);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(924, 1220);
            
            aspry = -23;
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1000, 1223);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1095, 1223);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(927, 1223);
            
            asprx = -2;
            aspry = -23;
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(994, 1217);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1089, 1217);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(921, 1217);
            
            aspry = -23;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1001, 1224);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1096, 1224);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(928, 1224);
            
            aspry = -24;
        }
    }
}

if ((state == STANDING || state == RUNNING) && landing == 1)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(805, 1140);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1012, 1140);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(831, 1140);
                
                aspry = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(806, 1141);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1013, 1141);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(832, 1141);
                
                asprx = -2;
                aspry = -17;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(806, 1141);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1013, 1141);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(832, 1141);
                
                asprx = -1;
                aspry = -21;
            }
        }
        
        if (aimdirection == 2)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(810, 1145);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1017, 1145);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(836, 1145);
                
                aspry = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(810, 1145);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1017, 1145);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(836, 1145);
                
                asprx = -2;
                aspry = -17;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(810, 1145);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1017, 1145);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(836, 1145);
                
                asprx = -1;
                aspry = -21;
            }
        }
        
        if (aimdirection == 4)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(801, 1136);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1008, 1136);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(827, 1136);
                
                aspry = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(801, 1136);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1008, 1136);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(827, 1136);
                
                asprx = -2;
                aspry = -17;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(801, 1136);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1008, 1136);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(827, 1136);
                
                asprx = -1;
                aspry = -21;
            }
        }
        
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(809, 1144);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1016, 1144);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(835, 1144);
                
                aspry = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(809, 1144);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1016, 1144);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(835, 1144);
                
                asprx = -2;
                aspry = -17;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(809, 1144);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1016, 1144);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(835, 1144);
                
                asprx = -1;
                aspry = -21;
            }
        }
    }
    
    if (facing == LEFT)
    {
        if (aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(802, 1137);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1009, 1137);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(828, 1137);
                
                aspry = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(804, 1139);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1011, 1139);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(830, 1139);
                
                asprx = 2;
                aspry = -17;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(804, 1139);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1011, 1139);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(830, 1139);
                
                asprx = 1;
                aspry = -21;
            }
        }
        
        if (aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(807, 1142);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1014, 1142);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(833, 1142);
                
                aspry = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(807, 1142);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1014, 1142);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(833, 1142);
                
                asprx = 2;
                aspry = -17;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(807, 1142);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1014, 1142);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(833, 1142);
                
                asprx = 1;
                aspry = -21;
            }
        }
        
        if (aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(800, 1135);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1007, 1135);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(826, 1135);
                
                aspry = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(799, 1134);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1006, 1134);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(825, 1134);
                
                asprx = 1;
                aspry = -16;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(799, 1134);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1006, 1134);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(825, 1134);
                
                aspry = -20;
            }
        }
        
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(808, 1143);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1015, 1143);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(834, 1143);
                
                aspry = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(808, 1143);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1015, 1143);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(834, 1143);
                
                asprx = 2;
                aspry = -17;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(808, 1143);
                
                if (set == 1)
                    aspr1 = scr_suit_sprites(1015, 1143);
                
                if (set == 2)
                    aspr1 = scr_suit_sprites(834, 1143);
                
                asprx = 1;
                aspry = -21;
            }
        }
    }
}

if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 0)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(805, 1140);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1012, 1140);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(831, 1140);
            
            aspry = -22;
        }
        
        if (aimdirection == 2)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(810, 1145);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1017, 1145);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(836, 1145);
            
            aspry = -22;
        }
        
        if (aimdirection == 4)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(801, 1136);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1008, 1136);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(827, 1136);
            
            aspry = -22;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(809, 1144);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1016, 1144);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(835, 1144);
            
            aspry = -23;
        }
    }
    
    if (facing == LEFT)
    {
        if (aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(802, 1137);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1009, 1137);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(828, 1137);
            
            aspry = -22;
        }
        
        if (aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(807, 1142);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1014, 1142);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(833, 1142);
            
            aspry = -22;
        }
        
        if (aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(799, 1134);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1006, 1134);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(825, 1134);
            
            aspry = -22;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(808, 1143);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1015, 1143);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(834, 1143);
            
            aspry = -23;
        }
    }
}

if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 1)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(998, 1221);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1093, 1221);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(925, 1221);
            
            aspry = -23;
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1003, 1226);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1098, 1226);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(930, 1226);
            
            asprx = -2;
            aspry = -23;
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(995, 1218);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1090, 1218);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(922, 1218);
            
            asprx = -1;
            aspry = -23;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1002, 1225);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1097, 1225);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(929, 1225);
            
            aspry = -25;
        }
    }
    
    if (facing == LEFT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(996, 1219);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1091, 1219);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(923, 1219);
            
            aspry = -23;
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1000, 1223);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1095, 1223);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(927, 1223);
            
            asprx = -3;
            aspry = -23;
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(994, 1217);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1089, 1217);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(921, 1217);
            
            aspry = -23;
        }
        
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1001, 1224);
            
            if (set == 1)
                aspr1 = scr_suit_sprites(1096, 1224);
            
            if (set == 2)
                aspr1 = scr_suit_sprites(928, 1224);
            
            asprx = -1;
            aspry = -25;
        }
    }
}

aspr2 = 66;
aspr2x = 0;
aspr2y = 0;
aspr2a = 0;

if (facing == RIGHT && morphing == 0 && unmorphing == 0)
{
    if (state == STANDING && landing == 0 && turning == 0 && armcannon == 1)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69;
            aspr2x = 14;
            aspr2y = -27;
        }
        
        if (aimdirection == 2)
        {
            aspr2 = 73;
            aspr2x = 10;
            aspr2y = -37;
        }
        
        if (aimdirection == 4)
        {
            aspr2 = 73;
            aspr2x = 11;
            aspr2y = -19;
            aspr2a = -90;
        }
        
        if (aimdirection == 6)
        {
            aspr2 = 69;
            aspr2x = 3;
            aspr2y = -42;
            aspr2a = 90;
        }
    }
    
    if (state == STANDING && landing == 1 && turning == 0)
    {
        if (aimdirection == 0)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69;
                aspr2x = 13;
                aspr2y = -13;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = 13;
                aspr2y = -20;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69;
                aspr2x = 14;
                aspr2y = -24;
            }
        }
        
        if (aimdirection == 2)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73;
                aspr2x = 9;
                aspr2y = -26;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73;
                aspr2x = 7;
                aspr2y = -31;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73;
                aspr2x = 8;
                aspr2y = -35;
            }
        }
        
        if (aimdirection == 4)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73;
                aspr2x = 11;
                aspr2y = -8;
                aspr2a = -90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73;
                aspr2x = 9;
                aspr2y = -13;
                aspr2a = -90;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -17;
                aspr2a = -90;
            }
        }
        
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69;
                aspr2x = 3;
                aspr2y = -31;
                aspr2a = 90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = 1;
                aspr2y = -36;
                aspr2a = 90;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69;
                aspr2x = 2;
                aspr2y = -40;
                aspr2a = 90;
            }
        }
    }
    
    if (state == DUCKING && turning == 0)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69;
            aspr2x = 13;
            aspr2y = -13;
        }
        
        if (aimdirection == 2)
        {
            aspr2 = 73;
            aspr2x = 9;
            aspr2y = -26;
        }
        
        if (aimdirection == 4)
        {
            aspr2 = 73;
            aspr2x = 11;
            aspr2y = -8;
            aspr2a = -90;
        }
        
        if (aimdirection == 6)
        {
            aspr2 = 69;
            aspr2x = 3;
            aspr2y = -32;
            aspr2a = 90;
        }
    }
    
    if (state == JUMPING && vjump == 1 && turning == 0)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69;
            aspr2x = 12;
            aspr2y = -23;
        }
        
        if (aimdirection == 2)
        {
            aspr2 = 73;
            aspr2x = 9;
            aspr2y = -36;
        }
        
        if (aimdirection == 4)
        {
            aspr2 = 73;
            aspr2x = 11;
            aspr2y = -18;
            aspr2a = -90;
        }
        
        if (aimdirection == 6)
        {
            aspr2 = 69;
            aspr2x = 3;
            aspr2y = -42;
            aspr2a = 90;
        }
        
        if (aimdirection == 7)
        {
            aspr2 = 69;
            aspr2x = 3;
            aspr2y = -7;
            aspr2a = -90;
        }
    }
    
    if (state == RUNNING && turning == 0 && walking == 0)
    {
        if (aimdirection == 0)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69;
                aspr2x = 13;
                aspr2y = -27;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = 14;
                aspr2y = -28;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69;
                aspr2x = 15;
                aspr2y = -29;
            }
            
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 69;
                aspr2x = 16;
                aspr2y = -28;
            }
            
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 69;
                aspr2x = 14;
                aspr2y = -28;
            }
            
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 69;
                aspr2x = 13;
                aspr2y = -27;
            }
            
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 69;
                aspr2x = 13;
                aspr2y = -28;
            }
            
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 69;
                aspr2x = 14;
                aspr2y = -29;
            }
            
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 69;
                aspr2x = 15;
                aspr2y = -29;
            }
            
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 69;
                aspr2x = 14;
                aspr2y = -28;
            }
        }
        
        if (aimdirection == 2)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73;
                aspr2x = 9;
                aspr2y = -37;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -38;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73;
                aspr2x = 11;
                aspr2y = -39;
            }
            
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 73;
                aspr2x = 12;
                aspr2y = -38;
            }
            
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -38;
            }
            
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 73;
                aspr2x = 9;
                aspr2y = -37;
            }
            
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 73;
                aspr2x = 9;
                aspr2y = -38;
            }
            
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -39;
            }
            
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 73;
                aspr2x = 11;
                aspr2y = -39;
            }
            
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -38;
            }
        }
        
        if (aimdirection == 4)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73;
                aspr2x = 9;
                aspr2y = -19;
                aspr2a = -90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73;
                aspr2x = 11;
                aspr2y = -21;
                aspr2a = -90;
            }
            
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 73;
                aspr2x = 12;
                aspr2y = -20;
                aspr2a = -90;
            }
            
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
            
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 73;
                aspr2x = 9;
                aspr2y = -19;
                aspr2a = -90;
            }
            
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 73;
                aspr2x = 9;
                aspr2y = -20;
                aspr2a = -90;
            }
            
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -21;
                aspr2a = -90;
            }
            
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 73;
                aspr2x = 11;
                aspr2y = -21;
                aspr2a = -90;
            }
            
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 73;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
        }
    }
    
    if (state == RUNNING && turning == 0 && walking == 1)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69;
            
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = 14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = 14;
                aspr2y = -27;
            }
            
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = 14;
                aspr2y = -27;
            }
            
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = 14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = 14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = 14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = 14;
                aspr2y = -27;
            }
            
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = 14;
                aspr2y = -27;
            }
            
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = 14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = 14;
                aspr2y = -26;
            }
        }
        
        if (aimdirection == 2)
        {
            aspr2 = 73;
            
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = 11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = 11;
                aspr2y = -36;
            }
            
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = 11;
                aspr2y = -36;
            }
            
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = 11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = 11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = 11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = 11;
                aspr2y = -36;
            }
            
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = 11;
                aspr2y = -36;
            }
            
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = 11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = 11;
                aspr2y = -35;
            }
        }
        
        if (aimdirection == 4)
        {
            aspr2 = 73;
            aspr2a = -90;
            
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = 11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = 11;
                aspr2y = -18;
            }
            
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = 11;
                aspr2y = -18;
            }
            
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = 11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = 11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = 11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = 11;
                aspr2y = -18;
            }
            
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = 11;
                aspr2y = -18;
            }
            
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = 11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = 11;
                aspr2y = -17;
            }
        }
        
        if (aimdirection == 6)
        {
            aspr2 = 69;
            aspr2a = 90;
            
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = 3;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = 3;
                aspr2y = -41;
            }
            
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = 3;
                aspr2y = -41;
            }
            
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = 3;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = 3;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = 3;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = 3;
                aspr2y = -41;
            }
            
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = 3;
                aspr2y = -41;
            }
            
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = 3;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = 3;
                aspr2y = -40;
            }
        }
    }
    
    if (state == GRIP && turning == 0)
    {
        if (aimdirection == 6)
        {
            aspr2 = 70;
            aspr2x = -7;
            aspr2y = -36;
            aspr2a = 90;
        }
        
        if (aimdirection == 3)
        {
            aspr2 = 74;
            aspr2x = -17;
            aspr2y = -27;
            aspr2a = 90;
        }
        
        if (aimdirection == 1)
        {
            aspr2 = 70;
            aspr2x = -20;
            aspr2y = -18;
            aspr2a = 180;
        }
        
        if (aimdirection == 5)
        {
            aspr2 = 74;
            aspr2x = -15;
            aspr2y = -9;
            aspr2a = 180;
        }
        
        if (aimdirection == 7)
        {
            aspr2 = 70;
            aspr2x = -5;
            aspr2y = -4;
            aspr2a = -90;
        }
        
        if (aimdirection == 0)
        {
            aspr2 = 70;
            aspr2x = -3;
            aspr2y = -5;
            aspr2a = -90;
        }
    }
    
    if (state == GRIP && turning == 1)
    {
        aspr2 = 74;
        aspr2x = -11;
        aspr2y = -10;
        aspr2a = 200;
    }
    
    if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70;
                aspr2x = -1;
                aspr2y = -42;
                aspr2a = 90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = 2;
                aspr2y = -42;
                aspr2a = 90;
            }
        }
        
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -28;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -28;
            }
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -34;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -34;
            }
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -15;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -15;
            }
        }
    }
    
    if (state == JUMPING && vjump == 1 && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70;
                aspr2x = -1;
                aspr2y = -43;
                aspr2a = 90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = 2;
                aspr2y = -43;
                aspr2a = 90;
            }
        }
        
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -27;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -27;
            }
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -33;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -33;
            }
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -14;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -14;
            }
        }
    }
    
    if (state == DUCKING && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70;
                aspr2x = -1;
                aspr2y = -33;
                aspr2a = 90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = 2;
                aspr2y = -33;
                aspr2a = 90;
            }
        }
        
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -12;
            }
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -26;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -26;
            }
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6;
                aspr2y = -9;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6;
                aspr2y = -9;
            }
        }
    }
    
    if (state == CLIMBING)
    {
        if (statetime == 0)
        {
            aspr2 = 70;
            aspr2x = -4;
            aspr2y = -5;
            aspr2a = -90;
        }
        
        if (statetime >= 1 && statetime <= 3)
        {
            aspr2 = 73;
            aspr2x = 2;
            aspr2y = -11;
            aspr2a = -90;
        }
        
        if (statetime >= 4 && statetime <= 6)
        {
            aspr2 = 73;
            aspr2x = 5;
            aspr2y = -10;
            aspr2a = -90;
        }
        
        if (statetime == 7)
        {
            aspr2 = 73;
            aspr2x = 6;
            aspr2y = -10;
            aspr2a = -90;
        }
        
        if (statetime == 8)
        {
            aspr2 = 73;
            aspr2x = 6;
            aspr2y = -11;
            aspr2a = -90;
        }
        
        if (statetime == 9)
        {
            aspr2 = 73;
            aspr2x = 6;
            aspr2y = -12;
            aspr2a = -90;
        }
        
        if (statetime == 10)
        {
            aspr2 = 73;
            aspr2x = 5;
            aspr2y = -9;
            aspr2a = -90;
        }
        
        if (statetime == 11)
        {
            aspr2 = 73;
            aspr2x = 5;
            aspr2y = -7;
            aspr2a = -90;
        }
        
        if (statetime == 12)
        {
            aspr2 = 73;
            aspr2x = 5;
            aspr2y = -5;
            aspr2a = -90;
        }
        
        if (statetime == 13)
        {
            aspr2 = 73;
            aspr2x = 5;
            aspr2y = -3;
            aspr2a = -90;
        }
    }
    
    if (state == BRAKING && sjball == 0)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2 = 73;
            aspr2x = -2;
            aspr2y = -14;
            aspr2a = -90;
        }
        
        if (image_index >= 1 && image_index < 2)
        {
            aspr2 = 73;
            aspr2x = 0;
            aspr2y = -15;
            aspr2a = -90;
        }
        
        if (image_index >= 2 && image_index < 3)
        {
            aspr2 = 73;
            aspr2x = 8;
            aspr2y = -18;
            aspr2a = -90;
        }
    }
    
    if (state == JUMPING && vjump == 0)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = 8;
            aspr2y = -18;
        }
        
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = 5;
            aspr2y = -10;
        }
        
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = 2;
            aspr2y = -2;
        }
        
        if (image_index >= 3 && image_index < 4)
        {
            aspr2x = -5;
            aspr2y = -10;
        }
        
        if (image_index >= 4 && image_index < 5)
        {
            aspr2x = -8;
            aspr2y = -18;
        }
        
        if (image_index >= 5 && image_index < 6)
        {
            aspr2x = -5;
            aspr2y = -24;
        }
        
        if (image_index >= 6 && image_index < 7)
        {
            aspr2x = -2;
            aspr2y = -28;
        }
        
        if (image_index >= 7 && image_index < 8)
        {
            aspr2x = 5;
            aspr2y = -24;
        }
    }
    
    if (state == JUMPING && walljumping == 1)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = -6;
            aspr2y = -10;
        }
        
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = -5;
            aspr2y = -10;
        }
        
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = -3;
            aspr2y = -11;
        }
    }
    
    if (state == SJSTART)
    {
        if (image_index >= 0 && image_index < 3)
        {
            aspr2x = 1;
            aspr2y = -15;
        }
        
        if (image_index >= 3)
        {
            aspr2x = 1;
            aspr2y = -12;
        }
    }
    
    if (state == SUPERJUMP && sjdir == 0)
    {
        if (image_index < 2)
        {
            aspr2x = 0;
            aspr2y = -12;
        }
        
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = -6;
            aspr2y = -12;
        }
        
        if (image_index >= 3 && image_index < 4)
        {
            aspr2x = -9;
            aspr2y = -12;
        }
        
        if (image_index >= 4 && image_index < 5)
        {
            aspr2x = -6;
            aspr2y = -12;
        }
        
        if (image_index >= 5 && image_index < 6)
        {
            aspr2x = 0;
            aspr2y = -12;
        }
        
        if (image_index >= 6 && image_index < 7)
        {
            aspr2x = 5;
            aspr2y = -12;
        }
        
        if (image_index >= 7 && image_index < 8)
        {
            aspr2x = 7;
            aspr2y = -12;
        }
        
        if (image_index >= 8 && image_index < 9)
        {
            aspr2x = 5;
            aspr2y = -12;
        }
    }
    
    if (state == SUPERJUMP && (sjdir == 1 || sjdir == 3))
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = -9;
            aspr2y = -13;
        }
        
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = -12;
            aspr2y = -14;
        }
        
        if (image_index >= 2)
        {
            aspr2x = -6;
            aspr2y = -15;
        }
    }
    
    if (state == SJEND)
    {
        if (statetime < 10)
        {
            if (sjdir == 0)
            {
                aspr2x = 0;
                aspr2y = -12;
            }
            
            if (sjdir == 1 || sjdir == 3)
            {
                aspr2x = -12;
                aspr2y = -14;
            }
        }
        
        if (statetime >= 10 && statetime < 28)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 8;
                aspr2y = -18;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 5;
                aspr2y = -10;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2x = 2;
                aspr2y = -2;
            }
            
            if (image_index >= 3 && image_index < 4)
            {
                aspr2x = -5;
                aspr2y = -10;
            }
            
            if (image_index >= 4 && image_index < 5)
            {
                aspr2x = -8;
                aspr2y = -18;
            }
            
            if (image_index >= 5 && image_index < 6)
            {
                aspr2x = -5;
                aspr2y = -24;
            }
            
            if (image_index >= 6 && image_index < 7)
            {
                aspr2x = -2;
                aspr2y = -28;
            }
            
            if (image_index >= 7 && image_index < 8)
            {
                aspr2x = 5;
                aspr2y = -24;
            }
        }
        
        if (statetime >= 28)
        {
            aspr2x = 1;
            aspr2y = -15;
        }
    }
    
    if (state == GRABBEDQUEEN)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69;
            aspr2x = 14;
            aspr2y = -27;
        }
    }
}

if (facing == LEFT && morphing == 0 && unmorphing == 0)
{
    if (state == STANDING && landing == 0 && turning == 0 && armcannon == 1)
    {
        if (aimdirection == 1)
        {
            aspr2 = 69;
            aspr2x = -14;
            aspr2y = -27;
        }
        
        if (aimdirection == 3)
        {
            aspr2 = 73;
            aspr2x = -10;
            aspr2y = -37;
        }
        
        if (aimdirection == 5)
        {
            aspr2 = 73;
            aspr2x = -11;
            aspr2y = -19;
            aspr2a = 90;
        }
        
        if (aimdirection == 6)
        {
            aspr2 = 69;
            aspr2x = -3;
            aspr2y = -41;
            aspr2a = -90;
        }
    }
    
    if (state == STANDING && landing == 1 && turning == 0)
    {
        if (aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69;
                aspr2x = -12;
                aspr2y = -13;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = -12;
                aspr2y = -20;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69;
                aspr2x = -13;
                aspr2y = -24;
            }
        }
        
        if (aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73;
                aspr2x = -9;
                aspr2y = -26;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73;
                aspr2x = -7;
                aspr2y = -31;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73;
                aspr2x = -8;
                aspr2y = -35;
            }
        }
        
        if (aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73;
                aspr2x = -11;
                aspr2y = -7;
                aspr2a = 90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -12;
                aspr2a = 90;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73;
                aspr2x = -11;
                aspr2y = -16;
                aspr2a = 90;
            }
        }
        
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69;
                aspr2x = -4;
                aspr2y = -31;
                aspr2a = -90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = -2;
                aspr2y = -36;
                aspr2a = -90;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69;
                aspr2x = -3;
                aspr2y = -40;
                aspr2a = -90;
            }
        }
    }
    
    if (state == DUCKING && turning == 0)
    {
        if (aimdirection == 1)
        {
            aspr2 = 69;
            aspr2x = -12;
            aspr2y = -13;
        }
        
        if (aimdirection == 3)
        {
            aspr2 = 73;
            aspr2x = -9;
            aspr2y = -26;
        }
        
        if (aimdirection == 5)
        {
            aspr2 = 73;
            aspr2x = -11;
            aspr2y = -8;
            aspr2a = 90;
        }
        
        if (aimdirection == 6)
        {
            aspr2 = 69;
            aspr2x = -4;
            aspr2y = -32;
            aspr2a = -90;
        }
    }
    
    if (state == JUMPING && vjump == 1 && turning == 0)
    {
        if (aimdirection == 1)
        {
            aspr2 = 69;
            aspr2x = -12;
            aspr2y = -23;
        }
        
        if (aimdirection == 3)
        {
            aspr2 = 73;
            aspr2x = -9;
            aspr2y = -36;
        }
        
        if (aimdirection == 5)
        {
            aspr2 = 73;
            aspr2x = -11;
            aspr2y = -18;
            aspr2a = 90;
        }
        
        if (aimdirection == 6)
        {
            aspr2 = 69;
            aspr2x = -4;
            aspr2y = -42;
            aspr2a = -90;
        }
        
        if (aimdirection == 7)
        {
            aspr2 = 69;
            aspr2x = -4;
            aspr2y = -7;
            aspr2a = 90;
        }
    }
    
    if (state == RUNNING && turning == 0 && walking == 0)
    {
        if (aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69;
                aspr2x = -13;
                aspr2y = -27;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = -14;
                aspr2y = -28;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69;
                aspr2x = -15;
                aspr2y = -29;
            }
            
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 69;
                aspr2x = -16;
                aspr2y = -28;
            }
            
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 69;
                aspr2x = -14;
                aspr2y = -28;
            }
            
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 69;
                aspr2x = -13;
                aspr2y = -27;
            }
            
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 69;
                aspr2x = -13;
                aspr2y = -28;
            }
            
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 69;
                aspr2x = -14;
                aspr2y = -29;
            }
            
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 69;
                aspr2x = -15;
                aspr2y = -29;
            }
            
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 69;
                aspr2x = -14;
                aspr2y = -28;
            }
        }
        
        if (aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73;
                aspr2x = -9;
                aspr2y = -37;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -38;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73;
                aspr2x = -11;
                aspr2y = -39;
            }
            
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 73;
                aspr2x = -12;
                aspr2y = -38;
            }
            
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -38;
            }
            
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 73;
                aspr2x = -9;
                aspr2y = -37;
            }
            
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 73;
                aspr2x = -9;
                aspr2y = -38;
            }
            
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -39;
            }
            
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 73;
                aspr2x = -11;
                aspr2y = -39;
            }
            
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -38;
            }
        }
        
        if (aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73;
                aspr2x = -9;
                aspr2y = -19;
                aspr2a = 90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73;
                aspr2x = -11;
                aspr2y = -21;
                aspr2a = 90;
            }
            
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 73;
                aspr2x = -12;
                aspr2y = -20;
                aspr2a = 90;
            }
            
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
            
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 73;
                aspr2x = -9;
                aspr2y = -19;
                aspr2a = 90;
            }
            
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 73;
                aspr2x = -9;
                aspr2y = -20;
                aspr2a = 90;
            }
            
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -21;
                aspr2a = 90;
            }
            
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 73;
                aspr2x = -11;
                aspr2y = -21;
                aspr2a = 90;
            }
            
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 73;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
        }
    }
    
    if (state == RUNNING && turning == 0 && walking == 1)
    {
        if (aimdirection == 1)
        {
            aspr2 = 69;
            
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = -14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = -14;
                aspr2y = -27;
            }
            
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = -14;
                aspr2y = -27;
            }
            
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = -14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = -14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = -14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = -14;
                aspr2y = -27;
            }
            
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = -14;
                aspr2y = -27;
            }
            
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = -14;
                aspr2y = -26;
            }
            
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = -14;
                aspr2y = -26;
            }
        }
        
        if (aimdirection == 3)
        {
            aspr2 = 73;
            
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = -11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = -11;
                aspr2y = -36;
            }
            
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = -11;
                aspr2y = -36;
            }
            
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = -11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = -11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = -11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = -11;
                aspr2y = -36;
            }
            
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = -11;
                aspr2y = -36;
            }
            
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = -11;
                aspr2y = -35;
            }
            
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = -11;
                aspr2y = -35;
            }
        }
        
        if (aimdirection == 5)
        {
            aspr2 = 73;
            aspr2a = 90;
            
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = -11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = -11;
                aspr2y = -18;
            }
            
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = -11;
                aspr2y = -18;
            }
            
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = -11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = -11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = -11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = -11;
                aspr2y = -18;
            }
            
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = -11;
                aspr2y = -18;
            }
            
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = -11;
                aspr2y = -17;
            }
            
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = -11;
                aspr2y = -17;
            }
        }
        
        if (aimdirection == 6)
        {
            aspr2 = 69;
            aspr2a = 270;
            
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = -4;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = -4;
                aspr2y = -41;
            }
            
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = -4;
                aspr2y = -41;
            }
            
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = -4;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = -4;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = -4;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = -4;
                aspr2y = -41;
            }
            
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = -4;
                aspr2y = -41;
            }
            
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = -4;
                aspr2y = -40;
            }
            
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = -4;
                aspr2y = -40;
            }
        }
    }
    
    if (state == GRIP && turning == 0)
    {
        if (aimdirection == 6)
        {
            aspr2 = 70;
            aspr2x = 7;
            aspr2y = -35;
            aspr2a = -90;
        }
        
        if (aimdirection == 2)
        {
            aspr2 = 74;
            aspr2x = 17;
            aspr2y = -26;
            aspr2a = -90;
        }
        
        if (aimdirection == 0)
        {
            aspr2 = 70;
            aspr2x = 20;
            aspr2y = -17;
            aspr2a = 180;
        }
        
        if (aimdirection == 4)
        {
            aspr2 = 74;
            aspr2x = 15;
            aspr2y = -8;
            aspr2a = 180;
        }
        
        if (aimdirection == 7)
        {
            aspr2 = 71;
            aspr2x = 5;
            aspr2y = -3;
            aspr2a = 90;
        }
        
        if (aimdirection == 1)
        {
            aspr2 = 72;
            aspr2x = 4;
            aspr2y = -4;
            aspr2a = 90;
        }
    }
    
    if (state == GRIP && turning == 1)
    {
        aspr2 = 74;
        aspr2x = 11;
        aspr2y = -10;
        aspr2a = -200;
    }
    
    if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70;
                aspr2x = 2;
                aspr2y = -41;
                aspr2a = -90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = -1;
                aspr2y = -41;
                aspr2a = -90;
            }
        }
        
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -28;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -28;
            }
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -34;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -34;
            }
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -15;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -15;
            }
        }
    }
    
    if (state == JUMPING && vjump == 1 && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70;
                aspr2x = 0;
                aspr2y = -42;
                aspr2a = -90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = -3;
                aspr2y = -42;
                aspr2a = -90;
            }
        }
        
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -27;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -27;
            }
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -33;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -33;
            }
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -14;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -14;
            }
        }
    }
    
    if (state == DUCKING && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70;
                aspr2x = 0;
                aspr2y = -32;
                aspr2a = -90;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69;
                aspr2x = -3;
                aspr2y = -32;
                aspr2a = -90;
            }
        }
        
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -12;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -12;
            }
        }
        
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -26;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -26;
            }
        }
        
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6;
                aspr2y = -9;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6;
                aspr2y = -9;
            }
        }
    }
    
    if (state == CLIMBING)
    {
        if (statetime == 0)
        {
            aspr2 = 72;
            aspr2x = 4;
            aspr2y = -6;
            aspr2a = 90;
        }
        
        if (statetime >= 4 && statetime <= 6)
        {
            aspr2 = 73;
            aspr2x = -7;
            aspr2y = -10;
            aspr2a = 90;
        }
        
        if (statetime == 7)
        {
            aspr2 = 73;
            aspr2x = -8;
            aspr2y = -10;
            aspr2a = 90;
        }
        
        if (statetime == 8)
        {
            aspr2 = 73;
            aspr2x = -8;
            aspr2y = -11;
            aspr2a = 90;
        }
        
        if (statetime == 9)
        {
            aspr2 = 73;
            aspr2x = -8;
            aspr2y = -12;
            aspr2a = 90;
        }
        
        if (statetime == 10)
        {
            aspr2 = 73;
            aspr2x = -7;
            aspr2y = -9;
            aspr2a = 90;
        }
        
        if (statetime == 11)
        {
            aspr2 = 73;
            aspr2x = -7;
            aspr2y = -7;
            aspr2a = 90;
        }
        
        if (statetime == 12)
        {
            aspr2 = 73;
            aspr2x = -7;
            aspr2y = -5;
            aspr2a = 90;
        }
        
        if (statetime == 13)
        {
            aspr2 = 73;
            aspr2x = -7;
            aspr2y = -3;
            aspr2a = 90;
        }
    }
    
    if (state == BRAKING && sjball == 0)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = -2;
            aspr2y = -14;
            aspr2a = -90;
        }
        
        if (image_index >= 1 && image_index < 2)
        {
            aspr2 = 73;
            aspr2x = -9;
            aspr2y = -16;
            aspr2a = 90;
        }
        
        if (image_index >= 2 && image_index < 3)
        {
            aspr2 = 73;
            aspr2x = -10;
            aspr2y = -18;
            aspr2a = 90;
        }
    }
    
    if (state == JUMPING && vjump == 0)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = -8;
            aspr2y = -18;
        }
        
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = -5;
            aspr2y = -10;
        }
        
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = -2;
            aspr2y = -2;
        }
        
        if (image_index >= 3 && image_index < 4)
        {
            aspr2x = 5;
            aspr2y = -10;
        }
        
        if (image_index >= 4 && image_index < 5)
        {
            aspr2x = 8;
            aspr2y = -18;
        }
        
        if (image_index >= 5 && image_index < 6)
        {
            aspr2x = 5;
            aspr2y = -24;
        }
        
        if (image_index >= 6 && image_index < 7)
        {
            aspr2x = 2;
            aspr2y = -28;
        }
        
        if (image_index >= 7 && image_index < 8)
        {
            aspr2x = -5;
            aspr2y = -24;
        }
    }
    
    if (state == JUMPING && walljumping == 1)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = 6;
            aspr2y = -10;
        }
        
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = 5;
            aspr2y = -10;
        }
        
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = 3;
            aspr2y = -11;
        }
    }
    
    if (state == SJSTART)
    {
        if (image_index >= 0 && image_index < 3)
        {
            aspr2x = -1;
            aspr2y = -15;
        }
        
        if (image_index >= 3)
        {
            aspr2x = -1;
            aspr2y = -12;
        }
    }
    
    if (state == SUPERJUMP && sjdir == 0)
    {
        if (image_index < 2)
        {
            aspr2x = 0;
            aspr2y = -12;
        }
        
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = 6;
            aspr2y = -12;
        }
        
        if (image_index >= 3 && image_index < 4)
        {
            aspr2x = 9;
            aspr2y = -12;
        }
        
        if (image_index >= 4 && image_index < 5)
        {
            aspr2x = 6;
            aspr2y = -12;
        }
        
        if (image_index >= 5 && image_index < 6)
        {
            aspr2x = 0;
            aspr2y = -12;
        }
        
        if (image_index >= 6 && image_index < 7)
        {
            aspr2x = -5;
            aspr2y = -12;
        }
        
        if (image_index >= 7 && image_index < 8)
        {
            aspr2x = -7;
            aspr2y = -12;
        }
        
        if (image_index >= 8 && image_index < 9)
        {
            aspr2x = -5;
            aspr2y = -12;
        }
    }
    
    if (state == SUPERJUMP && (sjdir == 2 || sjdir == 4))
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = 9;
            aspr2y = -13;
        }
        
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = 12;
            aspr2y = -14;
        }
        
        if (image_index >= 2)
        {
            aspr2x = 1;
            aspr2y = -17;
        }
    }
    
    if (state == SJEND)
    {
        if (statetime < 10)
        {
            if (sjdir == 0)
            {
                aspr2x = 0;
                aspr2y = -12;
            }
            
            if (sjdir == 2 || sjdir == 4)
            {
                aspr2x = 12;
                aspr2y = -14;
            }
        }
        
        if (statetime >= 10 && statetime < 28)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -8;
                aspr2y = -18;
            }
            
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -5;
                aspr2y = -10;
            }
            
            if (image_index >= 2 && image_index < 3)
            {
                aspr2x = -2;
                aspr2y = -2;
            }
            
            if (image_index >= 3 && image_index < 4)
            {
                aspr2x = 5;
                aspr2y = -10;
            }
            
            if (image_index >= 4 && image_index < 5)
            {
                aspr2x = 8;
                aspr2y = -18;
            }
            
            if (image_index >= 5 && image_index < 6)
            {
                aspr2x = 5;
                aspr2y = -24;
            }
            
            if (image_index >= 6 && image_index < 7)
            {
                aspr2x = 2;
                aspr2y = -28;
            }
            
            if (image_index >= 7 && image_index < 8)
            {
                aspr2x = -5;
                aspr2y = -24;
            }
        }
        
        if (statetime >= 28)
        {
            aspr2x = -1;
            aspr2y = -15;
        }
    }
    
    if (state == GRABBEDQUEEN)
    {
        if (aimdirection == 1 && image_index == 2)
        {
            aspr2 = 69;
            aspr2x = -17;
            aspr2y = -25;
        }
    }
}

if (global.screwattack == 1 && state == JUMPING && vjump == 0 && walljumping == 0 && (inwater == 0 || global.currentsuit >= 2))
{
    if (fxtimer == 0)
        image_blend = make_color_rgb(120, 0, 160);
    
    if (fxtimer == 2)
        image_blend = make_color_rgb(150, 200, 150);
    
    if (fxtimer == 4)
        image_blend = make_color_rgb(180, 255, 200);
    
    instance_create(x, y, oScrewAttack);
    mytrail = instance_create(x, y, oFXTrail);
    mytrail.sprite_index = sprite_index;
    mytrail.image_speed = image_speed;
    mytrail.image_index = image_index;
    mytrail.image_alpha = 0.3 + (fxtimer * 0.1);
    mytrail.additive = 1;
    mytrail.fadespeed = 0.4;
    mytrail.depth = -10;
    
    if (facing == LEFT)
        mytrail.image_xscale = -1;
    
    mytrail = instance_create(x, y - 15, oFXTrail);
    mytrail.sprite_index = sScrewSpark;
    mytrail.image_index = round(random(2));
    mytrail.image_alpha = 1 + (fxtimer * 0.1);
    mytrail.image_blend = make_color_rgb(50 + random(200), 255, 50 + random(200));
    
    if (random(10) < 1)
        mytrail.image_blend = c_white;
    
    if (global.sax)
        mytrail.image_blend = make_color_rgb(40, 160, 40);
    
    mytrail.additive = 1;
    mytrail.fadespeed = 0.5;
    mytrail.depth = -11;
    
    if (random(10) < 5)
        mytrail.image_xscale = -1;
    
    if (random(10) < 5)
        mytrail.image_yscale = -1;
}
else
{
    image_blend = c_white;
}

if (state == AIRBALL || (state == BALL && charge == 0))
{
    if (!instance_exists(oMBTrail))
        instance_create(x, y, oMBTrail);
}

if (state == JUMPING && global.spacejump == 1 && vjump == 0 && dash == 0 && charge == 0 && speedboost == 0 && (inwater == 0 || global.currentsuit >= 2))
{
    mytrail = instance_create(x, y - 17, oSpaceJumpTrail);
    mytrail.image_angle = -image_index * 45;
    
    if (facing == LEFT)
        mytrail.image_xscale = -1;
}

if (speedboost == 1 || charge > 0 || state == SJSTART || state == SUPERJUMP || (state == SJEND && statetime < 10))
{
    if (fxtimer == 0)
        instance_create(x, y, oCharacterTrail);
    
    if (!instance_exists(oSBTrail))
        instance_create(x, y, oSBTrail);
}

if (state == SUPERJUMP || speedboost || (state == SJSTART && statetime > 16))
{
    mysb = instance_create(x, y, oSpeedBoost);
    
    if (facing == RIGHT)
    {
        if (state == SJSTART)
        {
            if (sjdir == 0)
            {
                mysb.image_yscale = 1.2;
            }
            else
            {
                mysb.x = x + 8;
                mysb.y = y - 2;
                
                if (sjball == 0)
                    mysb.image_yscale = 1;
                
                if (sjball == 1)
                    mysb.image_yscale = 0.4;
            }
        }
        
        if (state == SUPERJUMP)
        {
            if (sjball == 0)
            {
                if (xVel != 0)
                    mysb.image_xscale = 1.8;
                
                if (yVel == 0)
                    mysb.image_yscale = 0.8;
            }
            
            if (sjball == 1)
            {
                if (xVel != 0)
                    mysb.image_xscale = 2;
                
                if (yVel != 0 && xVel == 0)
                    mysb.image_yscale = 0.7;
                else
                    mysb.image_yscale = 0.6;
                
                if (yVel == 0)
                    mysb.image_yscale = 0.4;
            }
        }
        
        if (state == JUMPING)
        {
            mysb.x = x + 8;
            mysb.y = y - 4;
            mysb.image_yscale = 1;
            mysb.image_xscale = 2.2;
            mysb2 = instance_create(x + 4, y + 6, oSpeedBoost);
            mysb2.image_xscale = 1.8;
            mysb2.image_yscale = 0.2;
        }
        
        if (state == AIRBALL && speedboost)
        {
            mysb.x = x + xVel;
            mysb.y = y + (yVel * 2);
            mysb.image_yscale = 0.4;
            mysb.image_xscale = 2;
        }
        
        if ((state == RUNNING || state == BALL) && speedboost)
        {
            mysb.x = x + 8;
            mysb.y = y - 2;
            mysb.image_yscale = 0.8;
            
            if (state == BALL)
                mysb.image_yscale = 0.4;
            
            mysb2 = instance_create(x - 12, y + 2, oSpeedBoost);
            mysb2.image_xscale = 0.1;
            mysb2.image_yscale = 0.1;
        }
    }
    
    if (facing == LEFT)
    {
        if (state == SJSTART)
        {
            if (sjdir == 0)
            {
                mysb.image_yscale = 1.2;
            }
            else
            {
                mysb.x = x - 8;
                mysb.y = y - 2;
                
                if (sjball == 0)
                    mysb.image_yscale = 1;
                
                if (sjball == 1)
                    mysb.image_yscale = 0.4;
            }
        }
        
        if (state == SUPERJUMP)
        {
            if (sjball == 0)
            {
                if (xVel != 0)
                    mysb.image_xscale = 1.8;
                
                if (yVel == 0)
                    mysb.image_yscale = 0.8;
            }
            
            if (sjball == 1)
            {
                if (xVel != 0)
                    mysb.image_xscale = 2;
                
                if (yVel != 0 && xVel == 0)
                    mysb.image_yscale = 0.7;
                else
                    mysb.image_yscale = 0.6;
                
                if (yVel == 0)
                    mysb.image_yscale = 0.4;
            }
        }
        
        if (state == JUMPING)
        {
            mysb.x = x - 8;
            mysb.y = y - 4;
            mysb.image_yscale = 1;
            mysb.image_xscale = 2.2;
            mysb2 = instance_create(x - 4, y + 6, oSpeedBoost);
            mysb2.image_xscale = 1.8;
            mysb2.image_yscale = 0.2;
        }
        
        if (state == AIRBALL && speedboost)
        {
            mysb.x = x + xVel;
            mysb.y = y + (yVel * 2);
            mysb.image_yscale = 0.4;
            mysb.image_xscale = 2;
        }
        
        if ((state == RUNNING || state == BALL) && speedboost)
        {
            mysb.x = x - 8;
            mysb.y = y - 2;
            mysb.image_yscale = 0.8;
            
            if (state == BALL)
                mysb.image_yscale = 0.4;
            
            mysb2 = instance_create(x + 12, y + 2, oSpeedBoost);
            mysb2.image_xscale = 0.1;
            mysb2.image_yscale = 0.1;
        }
    }
}

if (state == SUPERJUMP && fxtimer == 0 && sjball == 0)
{
    if (sjdir == 0)
    {
        myspark = instance_create(x, y - 32, oFXAnimSpark);
        myspark.image_angle = 90;
        myspark.additive = 1;
    }
    
    if (sjdir == 1)
        myspark = instance_create(x + 12, y - 12, oFXAnimSpark);
    
    if (sjdir == 3)
    {
        myspark = instance_create(x + 12, y - 16, oFXAnimSpark);
        myspark.image_angle = 20;
    }
    
    if (sjdir == 2)
        myspark = instance_create(x - 12, y - 12, oFXAnimSpark);
    
    if (sjdir == 4)
    {
        myspark = instance_create(x - 12, y - 16, oFXAnimSpark);
        myspark.image_angle = 340;
    }
    
    myspark.image_speed = 1;
    myspark.additive = 1;
    
    if (facing == LEFT && sjdir != 0)
        myspark.image_xscale = -1;
}

if (state == SUPERJUMP && fxtimer == 0 && sjball == 1)
{
    if (sjdir == 0)
    {
        myspark = instance_create(x, y - 15, oFXAnimSpark);
        myspark.image_angle = 90;
        myspark.additive = 1;
    }
    
    if (sjdir == 1)
        myspark = instance_create(x + 10, y - 6, oFXAnimSpark);
    
    if (sjdir == 3)
    {
        myspark = instance_create(x + 10, y - 8, oFXAnimSpark);
        myspark.image_angle = 20;
    }
    
    if (sjdir == 2)
        myspark = instance_create(x - 10, y - 6, oFXAnimSpark);
    
    if (sjdir == 4)
    {
        myspark = instance_create(x - 10, y - 8, oFXAnimSpark);
        myspark.image_angle = 340;
    }
    
    myspark.image_speed = 1;
    myspark.additive = 1;
    
    if (facing == LEFT && sjdir != 0)
        myspark.image_xscale = -1;
}

if (state == RUNNING && speedboost && (fxtimer == 0 || fxtimer == 2 || fxtimer == 4))
    myspark = instance_create(x, y - random(36), oSBSpark);

if (onfire && fxtimer == 0)
{
    if (mask_index == sMask1)
        expl = instance_create(x + random_range(-8, 8), y - random(28), oFXAnimSpark);
    else
        expl = instance_create(x + random_range(-8, 8), y - random(16), oFXAnimSpark);
    
    expl.image_speed = 0.5;
    expl.additive = 0;
    expl.sprite_index = sExpl1;
    expl.depth = -10;
    expl.image_xscale = 0.5;
    expl.image_yscale = 0.5;
}
