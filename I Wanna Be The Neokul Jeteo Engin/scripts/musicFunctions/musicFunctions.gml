switch(room) {
case startRoom:
case loadRoom:
if filePlaying != 0 and curMusic = global.BGM00 {
filePlaying = 0;
audio_stop_sound(curMusic);
curMusic = snd9D;
audio_play_sound(curMusic,0,1);
}
break;
case beginning:
case testRoom:
case hubRoom:
if filePlaying != 1 and curMusic != global.Select{
filePlaying = 1;
audio_stop_sound(curMusic);
curMusic = sndKISelect;
audio_play_sound(curMusic,0,1);
}
break;
case bossRoom:
if filePlaying != 2 and curMusic != global.Service{
filePlaying = 2;
audio_stop_sound(curMusic);
curMusic = sndService;
audio_play_sound(curMusic,0,1);
}
break;
}

/*case testRoom:
case 배경음악 나올 룸:
if filePlaying != 1 and curMusic != global.불러올 음악 변수{
filePlaying = 1;
audio_stop_sound(curMusic)
curMusic = 불러올 음악 변수;
audio_play_music(curMusic,1);
}
break;
