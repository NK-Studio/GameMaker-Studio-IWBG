ini_open_protect("globalData.ini");
ini_write_real("data","player.x",player.x);
ini_write_real("data","player.y",player.y);
ini_write_real("data","player.image_xscale",player.image_xscale);
ini_write_real("data","room",room);
ini_close_protect();

//플레이어가 있는 룸과 위치를 저장함
