ini_open_protect("globalData.ini");
player.x=ini_read_real("data","player.x",0);
player.y=ini_read_real("data","player.y",0);
player.image_xscale=ini_read_real("data","player.image_xscale",-1);
ini_close_protect();

//저장된 플레이어의 위치를 불러옴
