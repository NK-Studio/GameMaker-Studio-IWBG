/// @description 게임상의 전세계를 표현함
//사운드 불러옴
sound_load();
//사운드 시작 오류 방지 변수
musicOn = 1;
curMusic = global.BGM00;
filePlaying = 0;
if musicOn {audio_play_sound(global.BGM00,0,1);}
//월드 데이터 
world_Date();
difficulty = 1;//임시로 하드
deaths = 0;//임시로 죽은횟수 0

