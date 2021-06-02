/// @description 모바일 죽을시 부활
if room != startRoom and room != loadRoom {
instance_create(0,0,load_goto)//게임을 재시작함
audio_resume_all()//일시 정지였던 음악을 다시 재생싴킴
audio_stop_sound(sndOnDeath)//kill뮤직을 종료함
}
global.grav=0
__view_set( e__VW.Angle, 0, 0 )

