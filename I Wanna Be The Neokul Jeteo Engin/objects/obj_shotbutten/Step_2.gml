//중력이 바뀌거나 할때 화면상에서 이동을 함
if global.grav=0{
x=__view_get( e__VW.XView, 0 )+736
y=__view_get( e__VW.YView, 0 )+416
}else{
x=__view_get( e__VW.XView, 0 )+64
y=__view_get( e__VW.YView, 0 )+64
}
///플레이어가 조이스틱에 닿으면 조이스틱을 반투명화 함
if distance_to_object(player)=0{
image_alpha=0.5
}else{
image_alpha=1
}
if global.grav=0{
image_angle=0
}else{
image_angle=180
}

