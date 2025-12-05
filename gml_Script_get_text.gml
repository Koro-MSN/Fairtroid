ini_open(global.language[global.currentlanguage]);
var text = ini_read_string(argument0, argument1, "[!]");
ini_close();
return text;
