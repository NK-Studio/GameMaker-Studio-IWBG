/// @description 키드 기본설정
h=0;
//오토샷
delay=0;
//드럽통
smoke=0;

//frozen값 설정(플레이어를 마비시킴)
frozen = false;
enable = true;
//점프 높이
jump = 8.5; jump2 = 7; jump3 = 11;

//더블점프
djump = true;

//최고 걸어다니는 속도
maxSpeed = 3;

//중력 설정
gravity=0.4;

//최고 떨어지는 속도
maxFallSpeed=8;
maxVspeed=9;

//가만히 있는 스프라이트 속도
image_speed=1/5;

//발판 설정
onPlatform = false;
onblock = false;
//로드시 방향 설정
image_xscale = -1;
//월드 오류 방지
if instance_exists(world) == false instance_create(0,0,world);
//리본 생성
instance_create(x,y,bow);
//ini가 없으면 첫 저장
if(file_exists("globalData.ini") == false) {
player_saveGame();
}
//뷰 화면 생성
if !instance_exists(camera){instance_create(4, 0, camera);}
//모바일 경우
if (os_type == os_android or os_type == os_ios){
if !instance_exists(obj_controller){//화면에 컨트롤러가 없을경우
instance_create(0,0,obj_controller)
instance_create(0,0,obj_jumpbutten)
instance_create(0,0,obj_shotbutten)
instance_create(0,0,obj_restart)
}
}
/////////
d=0;//모바일 조이스틱에서 덩쿨에 닿았을때 윈도우즈에서 왼쪽 키를 눌렀는지 오른쪽 키를 누렀는지와 같은 현상을 표현함
c=0;//모바일에서 사다리를 주인공이 탔을시를 표현함
block2=0

