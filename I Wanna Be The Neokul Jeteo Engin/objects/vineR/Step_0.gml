/// @description PC벽타기
if (os_type == os_windows){//pc일경우
if global.grav=0{//중력이 체인지 되지 안았을경우
if collision_rectangle(x+32, y+4, x+36, y+28, player, true, true) > 0 {//덩쿨에 닿았을경우
    player.frozen = -1;//플레이어 이동을 멈춤
    if player.frozen == -1 { 
        player.sprite_index=sprPlayerSliding;//벽에 붙은 모션  
        player.image_speed=1/2;  
        player.image_xscale = -1; //오론쪽을 봄 
        player.x = x+38;
        player.gravity = 0;//중력을 제거함
        player.vspeed = 2;//밑으로 계속 내려감
        if keyboard_check_pressed(global.rightKey) {//오른쪽을 누를시
            audio_play_sound(sndJump,0,0);//점프 사운드 
            player.frozen = 2;
            player.hspeed = 6;//오른쪽으로 떨어짐;
            if keyboard_check(global.jumpKey) {player.vspeed = -8;}//점프키를 같이눌러주면 위로 올라감 
            else {player.vspeed = -4;}//살짝 위로 올라감
          }
      }
    }
}else{//중력이 체인지 되었을경우
if collision_rectangle(x+32, y+4, x+36, y+28, player, true, true) > 0 {
    player.frozen = -1;
    if player.frozen == -1 { 
        player.sprite_index=sprPlayerSliding; 
        player.image_speed=1/2;  
        player.image_xscale = -1; 
        player.x = x+38;
        player.gravity = 0;
        player.vspeed = -2;
        if keyboard_check_pressed(global.leftKey) {
            audio_play_sound(sndJump,0,0);
            player.frozen = 2; 
            player.hspeed = 6;
            if keyboard_check(global.jumpKey) {player.vspeed = 8;} 
            else {player.vspeed = 4;}
          }
      }
    }
}
}

///모바일
if (os_type == os_android or os_type == os_ios){//모바일 경우
if global.grav=0{//중력이 체인지 되지 안았을경우
if collision_rectangle(x+32, y+4, x+36, y+28, player, true, true) > 0 {//덩쿨에 닿았을경우
    player.frozen = -1;//플레이어 이동을 멈춤
    if player.frozen == -1 { 
        player.sprite_index=sprPlayerSliding; //벽에 붙은 모션 
        player.image_speed=1/2;  
        player.image_xscale = -1; //오른쪽을 봄 
        player.x = x+38;
        player.gravity = 0;//중력을 제거함
        player.vspeed = 2;//밑으로 계속 내려감
        if  player.d=1{//오른쪽을 누를시
            audio_play_sound(sndJump,0,0);//점프 사운드
            player.frozen = 2; 
            player.hspeed = 6;
            if obj_jumpbutten.jump=1 {player.vspeed = -8;} //점프키를 같이눌러주면 위로 올라감 
            else {player.vspeed = -4;}//살짝 위로 올라감
          }
      }
    }
  }else{
if collision_rectangle(x+32, y+4, x+36, y+28, player, true, true) > 0 {
    player.frozen = -1;
    if player.frozen == -1 { 
        player.sprite_index=sprPlayerSliding; 
        player.image_speed=1/2;  
        player.image_xscale = -1; 
        player.x = x+38;
        player.gravity = 0;
        player.vspeed = -2;
        if  player.d=1{
            audio_play_sound(sndJump,0,0);
            player.frozen = 2; 
            player.hspeed = 6;
            if obj_jumpbutten.jump=1 {player.vspeed = 8;} 
            else {player.vspeed = 4;}
          }
      }
    }
  }
}

