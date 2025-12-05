var input = argument0;
var input_size = string_length(input);
var index = 1;
var output = "";
var ml = ds_map_find_value(global._strict_data, "max_length");
var dict = ds_map_find_value(global._strict_data, "dictionary");
var verb = "";

while (index <= input_size)
{
    var l = min(input_size - (index - 1), ml);
    var q = "";
    
    for (var c = l; c > 0; c--)
    {
        var code = ds_map_find_value(dict, string_copy(input, index, c));
        
        if (!is_undefined(code))
        {
            q += chr(code);
            encoded = 1;
            index += c;
            break;
        }
    }
    
    if (q == "")
    {
        verb += string_char_at(input, index);
        index++;
        
        if (string_length(verb) == 255)
        {
            q = strict_encode_verb(verb);
            verb = "";
        }
    }
    else if (verb != "")
    {
        q = strict_encode_verb(verb) + q;
        verb = "";
    }
    
    output += q;
}

if (verb != "")
    output += strict_encode_verb(verb);

return output;
