if !instance_exists(softview){//소프트 뷰가 없을시 일반적 카메라 실행
if instance_exists(player) { //Also add conditions here if you want a moving camera
    if player.x >= 0 and player.x < room_width and player.y >= 0 and player.y < room_height and player.enable {
        __view_set( e__VW.XView, 0, floor(player.x/800)*800 );
        __view_set( e__VW.YView, 0, floor(player.y/480)*480 );
    }
}
}

