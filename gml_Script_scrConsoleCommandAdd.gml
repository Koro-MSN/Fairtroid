if (argument_count > 1)
{
    if (is_string(argument[1]))
    {
        var _name = CommandPrefix + argument[1];
        var _args;
        _args[0] = argument[0];
        
        if (argument_count > 2)
        {
            for (var i = 2; i < argument_count; i++)
                _args[i - 1] = argument[i];
        }
        
        if (ds_exists(ConsoleCommands, ds_type_map))
            ds_map_add(ConsoleCommands, _name, _args);
    }
}
