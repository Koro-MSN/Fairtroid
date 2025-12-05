if (string_char_at(ConsoleEntry, 1) == CommandPrefix)
{
    if (ds_exists(ConsoleCommands, ds_type_map))
    {
        var _command = ds_map_find_value(ConsoleCommands, CommandName);
        
        if (is_undefined(_command))
        {
            ConsoleEntry = "COMMAND : '" + CommandName + "' DOES NOT EXIST!!!";
        }
        else
        {
            switch (_command[0])
            {
                case 0:
                    if (ds_exists(ConsoleCommands, ds_type_map))
                    {
                        var _commandKey = ds_map_find_first(ConsoleCommands);
                        var _commandArray = ds_map_find_value(ConsoleCommands, _commandKey);
                        
                        do
                        {
                            _commandArray = ds_map_find_value(ConsoleCommands, _commandKey);
                            var _arrayLength = array_length_1d(_commandArray);
                            var _commandString = _commandKey;
                            
                            if (_arrayLength > 1)
                            {
                                _commandString += " (";
                                
                                for (var i = 1; i < _arrayLength; i++)
                                {
                                    _commandString += _commandArray[i];
                                    
                                    if (i < (_arrayLength - 1))
                                        _commandString += " / ";
                                }
                                
                                _commandString += ")";
                            }
                            
                            scrConsoleHistoryUpdate(_commandString);
                            _commandKey = ds_map_find_next(ConsoleCommands, _commandKey);
                        }
                        until (is_undefined(_commandKey));
                    }
                    
                    ConsoleEntry = "";
                    break;
                
                case 1:
                    if (CommandArg == _command[1])
                        global.DEBUG = 1;
                    
                    if (CommandArg == _command[2])
                        global.DEBUG = 0;
                    
                    if (CommandArg == "")
                        global.DEBUG = !global.DEBUG;
                    
                    break;
                
                default:
                    break;
            }
        }
    }
}
