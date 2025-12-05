if (global.CONSOLE)
{
    var _x = argument[0];
    var _y = argument[1];
    var _font = argument[2];
    var _colorBase = argument[3];
    var _colorVallid = argument[4];
    var _colorInvallid = argument[5];
    draw_set_font(_font);
    var _textColor = _colorBase;
    var _drawHeight = string_height(ConsoleVallidChars);
    draw_set_color(_textColor);
    draw_text(_x, _y, ConsoleEntry);
    
    if (ds_exists(ConsoleCommands, ds_type_map) && string_char_at(ConsoleEntry, 1) == CommandPrefix)
    {
        var _command = ds_map_find_value(ConsoleCommands, CommandName);
        
        if (is_undefined(_command))
            _textColor = _colorInvallid;
        else
            _textColor = _colorVallid;
        
        draw_set_color(_textColor);
        draw_text(_x, _y, CommandName);
    }
    
    draw_set_color(c_white);
    
    if (ds_exists(ConsoleHistory, ds_type_list))
    {
        var _string = "";
        
        for (var i = 0; i < ConsoleViewLine && i < ConsoleLineCount; i++)
        {
            _string = ds_list_find_value(ConsoleHistory, ConsoleViewLine - i - 1);
            draw_text(_x, _y - (_drawHeight * (i + 1)), _string);
        }
    }
}
