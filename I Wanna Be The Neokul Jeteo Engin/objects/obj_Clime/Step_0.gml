/// @description 사디리
//pc
if (os_type==os_windows){//PC일경우
if distance_to_object(player)=0{//플레이어가 닿았을경우
   player.sprite_index = sprPlayerClime;//사다리 타는 모션으로 바꿈
   player.image_speed = 0;//이미지 스피드는 0
   player.gravity = 0;//중력 없음
   player.vspeed = 0;//올라가는것을 멈춤
   player.djump = false;//점프를 하지 못함
   player.image_xscale = 1;
   player.frozen = -1;//플레이어를 멈춤
if global.grav=0{//중력이 체인지 되지 않았을경우
if keyboard_check(global.upKey){
   player.vspeed = -2;
   player.image_speed = 0.2;
   }
if keyboard_check(global.downKey) {
   player.vspeed = 2;
   player.image_speed = 0.2;
   }
if keyboard_check(global.leftKey) {
   player.hspeed = -2;
   player.image_speed = 0.2;
   }
if keyboard_check(global.rightKey) {
   player.hspeed = 2;
   player.image_speed = 0.2;
   }
}else{//중력이 체인지 되었을 경우
if keyboard_check(global.upKey) {
   player.vspeed = 2;
   player.image_speed = 0.2;
   }
if keyboard_check(global.downKey) {
   player.vspeed = -2;
   player.image_speed = 0.2;
   }
if keyboard_check(global.leftKey) {
   player.hspeed = 2;
   player.image_speed = 0.2;
   }
if keyboard_check(global.rightKey) {
   player.hspeed = -2;
   player.image_speed = 0.2;
   }
}
}
}
//모바일
if (os_type==os_android or os_type==os_ios){//모바일 일경우
if distance_to_object(player)=0{
   player.sprite_index = sprPlayerClime;
   player.image_speed = 0
   player.gravity = 0;
   player.vspeed = 0
   player.hspeed = 0
   player.djump = 1;
   player.image_xscale = 1;
   player.frozen = -1;
   switch(player.c){
   case 1 :
   player.hspeed = 2;
   player.image_speed = 0.2;
   break;
   case 2 :
   player.vspeed = -2;
   player.hspeed = 2;
   player.image_speed = 0.2;
   break;
   case 3 :
   player.vspeed = -2;
   player.image_speed = 0.2;
   break;
   case 4 :
   player.vspeed = -2;
   player.hspeed = -2;
   player.image_speed = 0.2;
   break;
   case 5 :
   player.hspeed = -2;
   player.image_speed = 0.2;
   break;
   case 6 :
   player.vspeed = 2;
   player.hspeed = -2;
   player.image_speed = 0.2;
   break;
   case 7 :
   player.vspeed = 2;
   player.image_speed = 0.2;
   break;
   case 8 :
   player.hspeed = 2;
   player.vspeed = 2;
   player.image_speed = 0.2;
   break;
   }
}
}

