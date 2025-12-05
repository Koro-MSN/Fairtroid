if (argument3 < 1)
    argument3 = 0;

var ibeam = global.ibeam;
var wbeam = global.wbeam;
var pbeam = global.pbeam;
var sbeam = global.sbeam;

for (i = 0; i < ds_list_size(global.otherPlayerItems); i++)
{
    var tempArr = ds_list_find_value(global.otherPlayerItems, i);
    var ID = tempArr[0];
    
    if (ID == argument5)
    {
        ibeam = tempArr[7];
        wbeam = tempArr[8];
        pbeam = tempArr[9];
        sbeam = tempArr[10];
    }
}

flash = instance_create(argument0, argument1, oMflashMulti);
beams = 1;
flash.ibeam = ibeam;
flash.wbeam = wbeam;
flash.pbeam = pbeam;

if (wbeam)
    flash.sprite_index = sWMflash;

if (pbeam)
    flash.sprite_index = sPMflash;

if (ibeam)
    flash.sprite_index = sIMflash;

if (wbeam && !sbeam && argument3 >= 1)
    beams = 2;

if (sbeam)
    beams = 3;

var i = 0;

repeat (beams)
{
    beam = instance_create(argument0, argument1, oBeam);
    beam.sax = argument4;
    beam.myid = argument5;
    beam.ibeam = ibeam;
    beam.wbeam = wbeam;
    beam.pbeam = pbeam;
    beam.sbeam = sbeam;
    beam.beamid = i;
    beam.direction = argument2;
    beam.maindir = argument2;
    beam.speed = 6.4;
    beam.offset = 0;
    beam.chargebeam = argument3;
    
    if (wbeam)
    {
        global.wbdir = !global.wbdir;
        beam.wbeamdir = global.wbdir;
        beam.speed = 9;
        beam.depth = -1000;
    }
    
    if (ibeam)
        beam.alarm[0] = 1 + random(5);
    
    if (pbeam)
        beam.alarm[1] = 1;
    
    if (argument3 >= 1)
        beam.speed = 12;
    
    beam.image_angle = argument2;
    beam.fcolor = make_color_rgb(180, 180, 45);
    
    if (wbeam)
        beam.fcolor = make_color_rgb(240, 150, 210);
    
    if (pbeam)
        beam.fcolor = make_color_rgb(120, 250, 210);
    
    if (ibeam)
        beam.fcolor = make_color_rgb(75, 220, 255);
    
    beam.falpha = 0.4;
    beam.fxscale = 0.6;
    beam.fyscale = 0.6;
    
    if (sbeam)
        beam.fxscale = 0.8;
    
    if (argument3 >= 1)
    {
        beam.fxscale = 1;
        beam.fyscale = 1;
    }
    
    beam.damage = 5;
    beam.chargebeam = 0;
    
    if (wbeam)
        beam.damage *= 1.5;
    
    if (ibeam)
        beam.damage *= 1.5;
    
    if (sbeam)
        beam.damage *= 0.8;
    
    if (pbeam)
        beam.damage *= 1.2;
    
    if (argument3 >= 1)
    {
        beam.damage *= 3;
        beam.chargebeam = 1;
        
        if (wbeam && !sbeam)
            beam.damage *= 0.6;
    }
    
    if (ibeam == 0 && wbeam == 0 && pbeam == 0 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sBeam;
        
        if (argument3 >= 1)
        {
            beam.sprite_index = sBeam2;
            beam.offset = 4;
        }
    }
    
    if (ibeam == 0 && wbeam == 1 && pbeam == 0 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sWBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sWBeam2;
        
        beam.offset = 10;
    }
    
    if (ibeam == 1 && wbeam == 0 && pbeam == 0 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sIBeam;
        
        if (argument3 >= 1)
        {
            beam.sprite_index = sIBeam2;
            beam.image_xscale = 1.4;
        }
    }
    
    if (ibeam == 0 && wbeam == 0 && pbeam == 1 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sPBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sPBeam2;
        
        beam.offset = 4;
    }
    
    if (ibeam == 0 && wbeam == 0 && pbeam == 0 && sbeam == 1)
    {
        if (argument3 == 0)
        {
            beam.sprite_index = sSBeam;
            beam.offset = 5;
        }
        
        if (argument3 >= 1)
        {
            beam.sprite_index = sSBeam2;
            beam.offset = 8;
        }
    }
    
    if (ibeam == 0 && wbeam == 1 && pbeam == 0 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sWBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sWBeam2;
        
        beam.offset = 12;
    }
    
    if (ibeam == 1 && wbeam == 0 && pbeam == 0 && sbeam == 1)
    {
        if (argument3 == 0)
        {
            beam.sprite_index = sISBeam;
            beam.image_xscale = 0.6;
        }
        
        if (argument3 >= 1)
        {
            beam.sprite_index = sISBeam;
            beam.image_xscale = 1.2;
        }
        
        beam.offset = 8;
    }
    
    if (ibeam == 0 && wbeam == 0 && pbeam == 1 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sSPBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sSPBeam2;
        
        beam.offset = 8;
    }
    
    if (ibeam == 1 && wbeam == 1 && pbeam == 0 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sIWBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sIWBeam2;
        
        beam.offset = 8;
    }
    
    if (ibeam == 0 && wbeam == 1 && pbeam == 1 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sPBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sPBeam2;
        
        beam.offset = 8;
    }
    
    if (ibeam == 1 && wbeam == 0 && pbeam == 1 && sbeam == 0)
    {
        if (argument3 == 0)
        {
            beam.sprite_index = sIPBeam;
            beam.image_xscale = 0.6;
            beam.image_yscale = 0.6;
        }
        
        if (argument3 >= 1)
            beam.sprite_index = sIPBeam;
        
        beam.offset = 8;
    }
    
    if (ibeam == 1 && wbeam == 1 && pbeam == 0 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sIWBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sIWBeam2;
        
        beam.offset = 8;
    }
    
    if (ibeam == 0 && wbeam == 1 && pbeam == 1 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sPBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sPBeam2;
        
        beam.offset = 8;
    }
    
    if (ibeam == 1 && wbeam == 0 && pbeam == 1 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sISPBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sISPBeam2;
        
        beam.offset = 8;
    }
    
    if (ibeam == 1 && wbeam == 1 && pbeam == 1 && sbeam == 0)
    {
        if (argument3 == 0)
        {
            beam.sprite_index = sIPBeam;
            beam.image_xscale = 0.6;
            beam.image_yscale = 0.6;
        }
        
        if (argument3 >= 1)
            beam.sprite_index = sIPBeam;
        
        beam.offset = 8;
    }
    
    if (ibeam == 1 && wbeam == 1 && pbeam == 1 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sISWPBeam;
        
        if (argument3 >= 1)
            beam.sprite_index = sISWPBeam2;
        
        beam.offset = 8;
    }
    
    with (beam)
    {
        if (offset != 0)
            beam_offset(offset, maindir);
    }
    
    i += 1;
}

if (ibeam == 0 && wbeam == 0 && pbeam == 0 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(96);
    
    if (argument3 >= 1)
        PlaySoundMono(97);
}

if (ibeam == 0 && wbeam == 1 && pbeam == 0 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(100);
    
    if (argument3 >= 1)
        PlaySoundMono(101);
}

if (ibeam == 1 && wbeam == 0 && pbeam == 0 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(98);
    
    if (argument3 >= 1)
        PlaySoundMono(99);
}

if (ibeam == 0 && wbeam == 0 && pbeam == 1 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(104);
    
    if (argument3 >= 1)
        PlaySoundMono(105);
}

if (ibeam == 0 && wbeam == 0 && pbeam == 0 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(102);
    
    if (argument3 >= 1)
        PlaySoundMono(103);
}

if (ibeam == 0 && wbeam == 1 && pbeam == 0 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(108);
    
    if (argument3 >= 1)
        PlaySoundMono(109);
}

if (ibeam == 1 && wbeam == 0 && pbeam == 0 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(106);
    
    if (argument3 >= 1)
        PlaySoundMono(107);
}

if (ibeam == 0 && wbeam == 0 && pbeam == 1 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(116);
    
    if (argument3 >= 1)
        PlaySoundMono(117);
}

if (ibeam == 1 && wbeam == 1 && pbeam == 0 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(120);
    
    if (argument3 >= 1)
        PlaySoundMono(121);
}

if (ibeam == 0 && wbeam == 1 && pbeam == 1 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(112);
    
    if (argument3 >= 1)
        PlaySoundMono(113);
}

if (ibeam == 1 && wbeam == 0 && pbeam == 1 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(110);
    
    if (argument3 >= 1)
        PlaySoundMono(111);
}

if (ibeam == 1 && wbeam == 1 && pbeam == 0 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(124);
    
    if (argument3 == 1)
        PlaySoundMono(125);
}

if (ibeam == 0 && wbeam == 1 && pbeam == 1 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(118);
    
    if (argument3 >= 1)
        PlaySoundMono(119);
}

if (ibeam == 1 && wbeam == 0 && pbeam == 1 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(114);
    
    if (argument3 >= 1)
        PlaySoundMono(115);
}

if (ibeam == 1 && wbeam == 1 && pbeam == 1 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(122);
    
    if (argument3 >= 1)
        PlaySoundMono(123);
}

if (ibeam == 1 && wbeam == 1 && pbeam == 1 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(126);
    
    if (argument3 >= 1)
        PlaySoundMono(127);
}
