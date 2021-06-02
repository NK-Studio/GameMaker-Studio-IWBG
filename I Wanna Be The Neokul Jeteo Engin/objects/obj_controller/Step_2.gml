//중력이 바뀌거나 할때 화면상에서 이동을 함
if global.grav=0{
x=__view_get( e__VW.XView, 0 )+144
y=__view_get( e__VW.YView, 0 )+416
}else{
x=__view_get( e__VW.XView, 0 )+656
y=__view_get( e__VW.YView, 0 )+64
}
if global.grav=0{
image_angle=0
}else{
image_angle=180
}

