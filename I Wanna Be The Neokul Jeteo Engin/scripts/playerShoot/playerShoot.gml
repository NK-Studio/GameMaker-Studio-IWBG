if (instance_number(bullet)<6) {//게임상에서 총알이 6개 미만일경우
    instance_create(x,y-3,bullet);//플레이어 중심에서 약간위 -3위치에서 총알 생성
    audio_play_sound(sndShoot,0,0);//소리를 냄
}
//총알이 발사될시 발생하는겁니다.//
