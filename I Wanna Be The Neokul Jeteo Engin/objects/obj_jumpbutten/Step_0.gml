/// @description 점프 
if instance_exists(player){
if player.frozen=0{
for( fff=0; fff<=4; fff+=1 ){
if device_mouse_check_button_pressed(fff,mb_left)
and collision_point(device_mouse_x(fff),device_mouse_y(fff),object_index,1,0){
with(player)playerJump();
 }
}
//점프(키 해제)
for( fff=0; fff<=4; fff+=1 ){
if device_mouse_check_button_released(fff,mb_left)
and collision_point(device_mouse_x(fff),device_mouse_y(fff),object_index,1,0){
with(player)playerVJump();
 }
}
}
}
//버튼 누름
for( fff=0; fff<=4; fff+=1 ){
if device_mouse_check_button(fff,mb_left)
and collision_point(device_mouse_x(fff),device_mouse_y(fff),object_index,1,0){
image_index=1
jump=1
    }
}
if image_index=0{jump=0;}

