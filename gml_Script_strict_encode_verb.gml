var verb = argument0;
var verb_length = string_length(verb);

if (verb_length > 1)
    return "ÿ" + chr(verb_length) + verb;
else
    return "þ" + verb;
