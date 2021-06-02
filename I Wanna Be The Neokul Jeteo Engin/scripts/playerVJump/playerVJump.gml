if global.grav=0{//중력 체인지가 0일경우
if (vspeed < 0) {vspeed *= 0.45;}
}else{//중력 체인지가 되었을 경우
if (vspeed > 0) {vspeed *= 0.45;}
}
//플레이어 높이를 섬세하게 조절하는데 사용하는 코드입니다.//
