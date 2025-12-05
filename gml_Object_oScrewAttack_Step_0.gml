if (myid != 0)
{
    depth = -12;
    
    if (instance_exists(oClient))
    {
        var findID = ds_list_find_index(global.screwList, myid);
        
        if (findID >= 0)
        {
            if (ds_list_size(oClient.roomListData) > 0)
            {
                if (ds_list_find_index(oClient.roomList, myid) < 0)
                {
                    ds_list_delete(global.screwList, findID);
                    instance_destroy();
                }
                
                for (var i = 0; i < ds_list_size(oClient.roomListData); i++)
                {
                    var arrDraw = ds_list_find_value(oClient.roomListData, i);
                    var arrID = arrDraw[0];
                    
                    if (arrID == myid)
                    {
                        var arrX = arrDraw[1];
                        var arrY = arrDraw[2];
                        var arrSprite = arrDraw[3];
                        mirror = arrDraw[12];
                        var arrRoom = arrDraw[14];
                        var arrState = arrDraw[19];
                        x = arrX;
                        y = arrY;
                        
                        if (arrRoom != room)
                            instance_destroy();
                    }
                }
            }
        }
        else
        {
            instance_destroy();
        }
    }
    else
    {
        instance_destroy();
    }
}

fxtimer++;

if (fxtimer > 4)
    fxtimer = 0;
