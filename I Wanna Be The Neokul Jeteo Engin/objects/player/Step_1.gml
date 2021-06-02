/// @description 조작
if frozen > 0 {frozen -= 1;} //Frozen이 0보다 이상일때 0으로 만들기위해 줄임
if enable {
if frozen == 0 {//frozen이 0과 같을경우 실행
hspeed=maxSpeed*h
if global.grav=0{
image_yscale=1
if place_meeting(x, y+1, block) or onPlatform || (!onblock && place_meeting(x,y+1,obj_wall)){ //플레이어가 블럭 또는 플랫폼 또는 대각 블럭에 서잇는경우
djump = 1;//바닥에 서있으므로 점프의 가능성을 만들어줌
gravity = 0;//땅위에 서있으므로 중력이 없음
if vspeed > 0 {vspeed = 0;}
if h != 0 {//방향키를 눌렀을 경우
sprite_index = sprPlayerRunning;
image_speed = 0.5;
}else{
hspeed=0
sprite_index = sprPlayerIdle;
image_speed = 0.2;
}
}else{
//점프 / 떨어지는 애니메이션
if (onPlatform == false){
if(vspeed < -0.05){
sprite_index=sprPlayerJump;
}
if(vspeed > 0.05){
sprite_index=sprPlayerFall;
}
 }
  }
}
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
if global.grav=1{
image_yscale=-1
if place_meeting(x, y-1, block) or onPlatform || (!onblock && place_meeting(x,y-1,obj_wall)){ //플레이어가 블럭 또는 플랫폼 또는 대각 블럭에 서잇는경우
djump = 1;//바닥에 서있으므로 점프의 가능성을 만들어줌
gravity = 0;//땅위에 서있으므로 중력이 없음
if vspeed < 0 {vspeed = 0;}
if h != 0 {//방향키를 눌렀을 경우
sprite_index = sprPlayerRunning;
image_speed = 0.5;
}else{
hspeed=0
sprite_index = sprPlayerIdle;
image_speed = 0.2;
}
}else{
//점프 / 떨어지는 애니메이션
if (onPlatform == false){
if(vspeed < -0.05){
sprite_index=sprPlayerFall;
}
if(vspeed > 0.05){
sprite_index=sprPlayerJump;
}
 }
  }
   }
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
if frozen == false{
//총 발사
if(keyboard_check(global.shootKey)){
if delay>5{playerShoot();delay=0}
}
//점프
if(keyboard_check_pressed(global.jumpKey)){
playerJump();}
//점프(키해제)
if(keyboard_check_released(global.jumpKey)){
playerVJump();
}
 }
//너무 빨리 움직이는 플레이어 조정
if global.grav=0{
if (vspeed > maxFallSpeed) {vspeed = maxFallSpeed;}
}else{
if (vspeed < -maxFallSpeed) {vspeed = -maxFallSpeed;}
}
if global.grav=0{
if !place_meeting(x,y+4,platform_parent) {onPlatform = 0;}
if !place_meeting(x, y+1, block) and !place_meeting(x, y+1, platform_parent){gravity = 0.4;gravity_direction=270;}
}
if global.grav=1{
if !place_meeting(x,y-4,platform_parent) {onPlatform = 0;}
if !place_meeting(x, y-1, block) and !place_meeting(x, y-1, platform_parent){gravity = 0.4;gravity_direction=90}
}
}
if !place_meeting(x+4, y, vineL) and !place_meeting(x-4, y, vineR){if frozen < 0 {frozen = 0;}}
}

    if !place_meeting(x,y+4,platform_parent) {onPlatform = 0;}
    

///특수 변수

//드럼통에 닿았을 경우
if global.grav=0{//플레이어가 중력체인지가 되지 안았을 경우
if smoke=1{vspeed=-10}
}else{
if smoke=1{vspeed=10}
}
//총알 발사 딜레이 설정
delay+=1

if (os_type == os_windows){//pc일경우
h=0;
hspeed=0;
}

