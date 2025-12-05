var tempArray = argument[0];

for (var i = 0; i < array_length_1d(tempArray); i++)
{
    if (tempArray[i] == argument[1])
        return i;
}

return -1;
