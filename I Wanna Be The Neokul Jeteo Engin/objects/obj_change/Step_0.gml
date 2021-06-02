if global.grav=1{//중력이 체인지 되었을경우
if __view_get( e__VW.Angle, 0 )!=180{//화면이 180도 회전을 안했을경우
if c_change=0{//체인지는  0일경우
c_change=1;//체인지는 1로 변환
audio_play_sound(g_sound,0,0);
}
if instance_exists(player){//플레이어가 있을경우
player.gravity = 0;//중력 없음
player.vspeed = 0;
player.hspeed = 0;
player.djump = true;//점프를 하지 못함
player.image_yscale=-1;//플레이어를 상하 반전 시킴
}
__view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (20) );//화면이 20씩 회전함
}
if __view_get( e__VW.Angle, 0 )=180{//180이 되면
c_change=0;//c_change는 0으로 다시 바꿈
}
}
//////////////////////////////
if global.grav=0{
if __view_get( e__VW.Angle, 0 )>=180{
if c_change=0{
c_change=1;
audio_play_sound(g_sound,0,0);
}
__view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (20) )
if instance_exists(player){
player.gravity = 0;//중력 없음
player.vspeed = 0;
player.hspeed = 0;
player.djump = true;//점프를 하지 못함
player.image_yscale=1;
}
}
if __view_get( e__VW.Angle, 0 )=360{
c_change=0;
}
}
if global.grav=0{
if __view_get( e__VW.Angle, 0 )=360{
__view_set( e__VW.Angle, 0, 0 );
}}

