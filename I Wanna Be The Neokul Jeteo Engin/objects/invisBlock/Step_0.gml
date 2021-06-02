if global.grav=0{//중력 체인지가 되지 않았을경우
if place_meeting(x, y-1, player )and !visible{//상
visible = true;//자신을 보임
audio_play_sound(sndBlockChange,0,0)
}
}
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
if global.grav=1{//중력 체인지가 되었을경우
if place_meeting(x, y+1, player )and !visible{//상
visible = true;//자신을 보임
audio_play_sound(sndBlockChange,0,0)
}
}

