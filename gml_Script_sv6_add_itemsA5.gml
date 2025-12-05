var list = ds_list_create();
var i = 250;

repeat (20)
{
    ds_list_add(list, global.item[i]);
    i += 1;
}

var str_list = ds_list_write(list);
ds_list_clear(list);
return str_list;
