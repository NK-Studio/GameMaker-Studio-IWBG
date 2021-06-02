if instance_exists(obj_controller){
x=obj_controller.con_x
y=obj_controller.con_y
}else{
instance_destroy()
}

if global.grav=0{
image_angle=0
}else{
image_angle=180
}
//플레이어가 조이스틱에 닿으면 조이스틱을 반투명화 함
if distance_to_object(player)=0{
image_alpha=0.5
}else{
image_alpha=1
}

