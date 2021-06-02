image_speed = 0;
image_index = choose(0, 1, 2);//이미지의 순서를 랜덤으로 정함
gravity = 0.4;
if global.grav=0{//중력 체인지가 안되었을 경우
gravity_direction = 270;
}else{//중력이 체인지 되었을 경우
gravity_direction = 90;
}

