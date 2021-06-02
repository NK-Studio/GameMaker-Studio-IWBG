/// @description 난이도를 결정
if instance_exists(player){//플레이어가 있을경우
if room = beginning {//룸이 비긴룸이면
difficulty=1//임시로 노말모든 적용
if player.y >= 480 {//플레이어가 480을 넘어가는 순간
if player.x < 160{difficulty_save();difficulty=0;}//이지를 주고
else if player.x < 384 {difficulty_save();difficulty=1;}//노말을 주고
else if player.x < 512 {difficulty_save();difficulty=2;}//하드를 주고
else {difficulty_save();difficulty=3;}//임파이셔블을 주고
room_goto(testRoom);//테스트 룸으로 이동
with(player)instance_destroy();//플레이어 삭제
}}}

//R키 누르면 부활
if keyboard_check_pressed(global.gameRestart){//R키 누를 시
global.grav=0//중력은 원래 상태로
__view_set( e__VW.Angle, 0, 0 )//화면 앵글도 원상태
if instance_exists(player){//플레이어가 생존한 상태일경우
if player.enable {loadGame();player_loadGame();}
}
else if room != startRoom and room != loadRoom {//플레이어가 사망한 상태일경우
instance_create(0,0,load_goto)
audio_resume_all()
audio_stop_sound(sndOnDeath)
}}

//ESC버튼누르면 게임 종료
if keyboard_check_pressed(global.esc){game_end()}

