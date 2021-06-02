/// @description 대각블럭
//중력 체인지 아이템과 함께 사용하는것을 금지합니다.
wx = x;
wy = y;
wxpre = xprevious;
wypre = yprevious;
wSpeed = vspeed;

if(vspeed>0){
hosei=vspeed+1;
}

else{
hosei=0;
}

if(place_meeting(x,y,obj_wall) == true ){
  x = xprevious;
  y = yprevious;
  move_contact_solid(point_direction(xprevious,yprevious,wx,wy),-1)
  vspeed = 0;
  gravity = 0;
  if(place_meeting(x,y+1,obj_wall) == true){
    if(place_meeting(wx,y-3-maxSpeed,obj_wall) == false){
      x = wx;
      y -= 3;
      move_contact_solid(270,10);
   }
  }
}else{
  if(onblock == 0){
    if(place_meeting(xprevious+image_xscale,y+3,obj_wall) == true){
      move_contact_solid(270,10);
    }
  }
}
if(place_meeting(x,y+1,obj_wall) == false){
    gravity = 0.4;
  if(place_meeting(x,y-1,obj_wall) == false){
    y = wy;
    if(place_free(x,y) == false){
      y = yprevious;
      move_contact_solid(point_direction(x,y,x,wy),-1);
    }
    vspeed = wSpeed;
  }else{
    if(place_free(wx,y) == false){
      y += 1;
    }
  }
}
else{ // add point
  if(place_meeting(wx,wy,obj_wall) == true){
    if(place_meeting(x,wy,obj_wall) == false){
        y = wy;
        gravity = 0.4;
        vspeed = wSpeed;
    }
  }
}

if(place_meeting(x,y+1,obj_wall) == true && vspeed == 0){
  onblock = 0;
  djump=true;
}

