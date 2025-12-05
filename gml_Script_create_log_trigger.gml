if (argument[0] == 0)
{
    if (global.log[argument[1]] == 0)
    {
        var inst = instance_create(argument[2], argument[3], oLogTrigger);
        
        with (inst)
        {
            yoffset = argument[4];
            lognum = argument[1];
            event_user(0);
            visible = argument[5];
        }
    }
}
else
{
    var arrayHasValue = 0;
    var i = 0;
    var iLen = array_length_1d(global.trooperlog);
    
    while (i < iLen)
    {
        if (global.trooperlog[i] == argument[1])
        {
            arrayHasValue = 1;
            break;
        }
        
        i++;
    }
    
    if (!arrayHasValue)
    {
        var inst = instance_create(argument[2], argument[3], oLogTrigger);
        
        with (inst)
        {
            yoffset = argument[4];
            trooperlognum = argument[1];
            event_user(0);
            visible = argument[5];
        }
    }
}
