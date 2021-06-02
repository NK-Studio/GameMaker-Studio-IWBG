/// @description 샷
if instance_exists(player){
if player.frozen=0{
for( fff=0; fff<=4; fff+=1 ){
if device_mouse_check_button(fff,mb_left)
and collision_point(device_mouse_x(fff),device_mouse_y(fff),object_index,1,0){
if instance_exists(player){if player.delay>5{with(player)playerShoot();player.delay=0}}
 }
}
}
}
//버튼 누름
for( fff=0; fff<=4; fff+=1 ){
if device_mouse_check_button(fff,mb_left)
and collision_point(device_mouse_x(fff),device_mouse_y(fff),object_index,1,0){
image_index=1
 }
}

