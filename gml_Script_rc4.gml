var str = argument0;
var key = argument1;
var out = "";
var len = string_length(key);
var S;

for (i = 0; i < 256; i += 1)
    S[i] = i;

var j = 0;

for (i = 0; i < 256; i += 1)
{
    j = (j + S[i] + ord(string_char_at(key, (i % len) + 1))) % 256;
    var temp = S[i];
    S[i] = S[j];
    S[j] = temp;
}

var i = 0;
j = 0;

for (var pos = 0; pos < string_length(str); pos += 1)
{
    i = (i + 1) % 256;
    j = (j + S[i]) % 256;
    var temp = S[i];
    S[i] = S[j];
    S[j] = temp;
    var t = (S[i] + S[j]) % 256;
    out += chr(ord(string_char_at(str, pos + 1)) ^ S[t]);
}

return out;
