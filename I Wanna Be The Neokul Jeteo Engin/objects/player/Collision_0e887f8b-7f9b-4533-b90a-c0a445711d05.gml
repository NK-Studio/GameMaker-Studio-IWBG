/// @description 블럭 설정
if global.grav=0{//중력 설정이 안되었을경우
if(place_free(x+hspeed,y) == false){
  if(hspeed <= 0){//왼
    move_contact_solid(180,abs(hspeed));
  }
  if(hspeed > 0){//오
    move_contact_solid(0,abs(hspeed));
  }
  hspeed = 0;
}
if(place_free(x,y+vspeed) == false){
  if(vspeed <= 0){//상
    move_contact_solid(90,abs(vspeed));
  }
  if(vspeed > 0){//하
    move_contact_solid(270,abs(vspeed));
    djump=1;
  }
  vspeed = 0;
  gravity=0
}
}
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
if global.grav=1{
if(place_free(x+hspeed,y) == false){
  if(hspeed < 0){//왼
    move_contact_solid(180,abs(hspeed));
  }
  if(hspeed >= 0){//오
    move_contact_solid(0,abs(hspeed));
  }
  hspeed = 0;
}
if(place_free(x,y+vspeed) == false){
  if(vspeed <= 0){//상
    move_contact_solid(90,abs(vspeed));
    djump=1;
  }
  if(vspeed > 0){//하
    move_contact_solid(270,abs(vspeed));
   
  }
  vspeed = 0;
}
}
if (place_free(x+hspeed,y+vspeed) == false){
  hspeed=0;
  }

