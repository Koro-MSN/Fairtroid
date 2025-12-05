if (juststarted > 0 || room == rm_a0h01)
    exit;

if (global.lastSpawnRoom == room)
    exit;

global.lastSpawnRoom = room;
var roomnum = string(string_char_at(room_get_name(room), 5) + string_char_at(room_get_name(room), 6));

if (roomnum == "7b" || roomnum == "7c" || instance_exists(oSaveStation) || instance_exists(oMAlphaTriggerProx) || instance_exists(oMAlpha2TriggerProx) || instance_exists(oMalpha3TriggerProx) || instance_exists(oMAlphaTriggerA2) || instance_exists(oMGammaTriggerProx) || instance_exists(oMZeta_Cocoon) || instance_exists(oMOmega) || instance_exists(oQueen) || (room == rm_a0h05 && global.event[0] == 0) || (room == rm_a0h01 && global.timeofday == 2) || (room == rm_a0h14 || room == rm_a0h15) || instance_exists(oMGammaA3BTrigger) || instance_exists(oItem))
    exit;

if (global.roomsSinceLastSpawn > 1)
{
    global.roomsSinceLastSpawn--;
    exit;
}

global.roomsSinceLastSpawn = 3;

if (irandom(99) >= argument2)
    exit;

var list = ds_list_create();
var num_attempts = instance_number(oSolid) * argument0;
var num_spawn = argument1;
var i = 0;
var j = 0;

while (i < num_attempts && j < num_spawn)
{
    i++;
    var choice;
    
    do
        choice = irandom(instance_number(oSolid) - 1);
    until (ds_list_find_index(list, choice) == -1);
    
    ds_list_add(list, choice);
    var inst = instance_find(oSolid, choice);
    
    if (instance_exists(inst))
    {
        with (inst)
        {
            if (object_get_parent(object_index) != 273)
            {
                if (!is_breakable_block(object_index))
                {
                    if (y >= 32 && y < room_height && x >= 96 && x < (room_width - 96))
                    {
                        if (global.waterlevel == 0 || y < global.waterlevel)
                        {
                            if (image_xscale == 1 && image_yscale == 1)
                            {
                                var offset = irandom(floor(sprite_width / 16) - 1) * 16;
                                
                                if (collision_line(x + 8 + offset, y - 8, x + 8 + offset, y - 64, oSolid, false, true) == -4)
                                {
                                    if (collision_line(x + 8 + offset, y - 8, x + 8 + offset, y - 32, oSpikePlant, false, true) == -4 && collision_line(x + 8 + offset, y - 8, x + 8 + offset, y - 32, oSpikes, false, true) == -4 && collision_line(x + 8 + offset, y - 8, x + 8 + offset, y - 32, oPlantSpikes, false, true) == -4)
                                    {
                                        if ((get_ground_tile(x + 8 + offset, y - 8) == -1 || get_ground_tile(x + 8 + offset, y - 40) == -1) && !(get_ground_tile(x + 8 + offset, y - 8) == -1 && get_ground_tile(x + 8 + offset, y - 40) != -1))
                                        {
                                            var type = baby_septogg_sprite(x + 8 + offset, y + 8);
                                            
                                            if (type != -1)
                                            {
                                                j++;
                                                inst = instance_create(x + 8 + offset, y, oBabySeptogg);
                                                
                                                with (inst)
                                                    sprite_index = type;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

ds_list_destroy(list);
