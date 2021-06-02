if global.grav=0{//중력 체인지가 0일경우 
if place_meeting(x, y+1, block) || onPlatform || (!onblock && place_meeting(x,y+1,obj_wall)) {//블럭에 닿았을경우
    vspeed = -jump;//점프
    audio_play_sound(sndJump,0,0);//소리를 냄
    djump = true//더블점프를 할수있겠금 변수를 참으로 변경
}

else if(djump == true) {//더블 점프가 참일경우
    vspeed = -jump2;//더블점프
    audio_play_sound(sndDJump,0,0);//소리를 냄
    djump = false;//땅에 닿을때 까지 점프 불가능
}

else if(djump = 3){//모얼 점핑 아이템을 먹었을경우
    vspeed = -jump3;//모얼 점핑
    audio_play_sound(sndDJump,0,0);//소리를 냄
    djump = false;//점프 불가능
}
}else{//중력 체인지가 되었을 경우
if place_meeting(x, y-1, block) || onPlatform || (!onblock && place_meeting(x,y-1,obj_wall)) {
    vspeed = jump;
    audio_play_sound(sndJump,0,0);
    djump = true;
}

else if(djump == true) {
    vspeed = jump2;
    audio_play_sound(sndDJump,0,0);
    djump = false;
}

else if(djump = 3) {
    vspeed = jump3;
    audio_play_sound(sndDJump,0,0);
    djump = false;
}
}
//풀래이어 점프 높이를 표현햇습니다.

