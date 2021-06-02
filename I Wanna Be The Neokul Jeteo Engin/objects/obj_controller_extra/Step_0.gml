x=obj_controller.x
y=obj_controller.y

//플레이어가 자신에게 닿으면 
if distance_to_object(player)=0{
obj_controller.image_alpha=0.5//obj_controller를 반투명하게 만듬
}else{//안닿으면 
obj_controller.image_alpha=1//일정함
}

