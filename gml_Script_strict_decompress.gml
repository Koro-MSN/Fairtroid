var input = argument0;
var input_size = string_length(input);
var output = "";
var index = 1;
var ml = ds_map_find_value(global._strict_data, "max_length");
var inv_dict = ds_map_find_value(global._strict_data, "inv_dictionary");

while (index <= input_size)
{
    var char = string_ord_at(input, index);
    
    if (char == 255)
    {
        var n = string_ord_at(input, index + 1);
        output += string_copy(input, index + 2, n);
        index += (n + 2);
    }
    else if (char == 254)
    {
        output += string_char_at(input, index + 1);
        index += 2;
    }
    else
    {
        output += ds_list_find_value(inv_dict, char);
        index++;
    }
}

return output;
